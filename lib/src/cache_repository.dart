import 'package:dart_json_mapper/dart_json_mapper.dart' show JsonMapper;
import 'package:http/http.dart' as http;

import 'db_repository.dart';
import 'models/cache.dart';

class ErrorFetch implements Exception {}

class CacheRepository<T> {
  CacheRepository({http.Client? client})
      : _client = client ?? http.Client(),
        _dbRepository = DbRepository();

  final http.Client _client;
  final DbRepository _dbRepository;

  /// Fetch data from the internet by sending HTTP GET request
  Future<T?> _fetchNewData(String url, Duration duration) async {
    final uri = Uri.parse(url);

    final response = await _client.get(uri);
    final json = response.body;

    try {
      final data = JsonMapper.deserialize<T>(json);
      Cache cache =
          Cache(data: json, url: url, time: DateTime.now(), duration: duration);
      _dbRepository.put(url, cache);
      return data;
    } on Exception {
      throw ErrorFetch();
    }
  }

  Future<void> _checkDbOpen() async {
    await _dbRepository.hiveOpenBox('cache');
  }

  bool isExpired(String url) {
    final cache = _dbRepository.getItem(url);
    if (cache == null) {
      return true;
    }
    final expiryDate = cache.time.add(cache.duration);

    /// Data already expired
    if (expiryDate.isBefore(DateTime.now())) {
      return true;
    }
    return false;
  }

  /// check data in the DB
  Future<T?> checkDb(String url, Duration duration) async {
    await _checkDbOpen();
    final cache = _dbRepository.getItem(url);

    if (cache == null) {
      return await _fetchNewData(url, duration);
    }
    final expiryDate = cache.time.add(cache.duration);

    /// Data already expired
    if (expiryDate.isBefore(DateTime.now())) {
      return await _fetchNewData(url, duration);
    }

    /// Data haven't expired
    /// take the previous cache
    final result = JsonMapper.deserialize<T>(cache.data);
    return result;
  }

  /// Delete an item from cache
  Future<bool> deleteItem(String url) async {
    await _dbRepository.deleteItem(url);
    return true;
  }

  /// Delete all item from cache
  Future<void> deleteAllItem() async => await _dbRepository.deleteAllItem();
}
