import 'package:hive_flutter/hive_flutter.dart';
import 'package:http/http.dart' as http;

import 'cache_repository.dart';
import 'models/cache.dart';

/// Instance of cache data.
/// Flutter library to load and cache from API.
class CacheData<T> {
  CacheData([http.Client? client])
      : _cacheRepository = CacheRepository<T>(client: client);

  /// Initialize Hive DB with the path from [getApplicationDocumentsDirectory]
  static Future<void> init([String? subDir]) async {
    await Hive.initFlutter(subDir);
    Hive.registerAdapter(CacheAdapter());
  }

  final CacheRepository<T> _cacheRepository;

  /// Fetch data from [HiveDB] with url as a key. If the database is empty,
  /// Sends an [HTTP] [GET] request to the given url then store the data in the
  /// [HiveDB] with [duration] as the age of the data.
  ///
  /// Return Dart object.
  Future<T?> fetchData(
  String url, {required Duration duration}) {
    return _cacheRepository.checkDb(url, duration);
  }

  /// Check whether the cache is expired or not
  bool isExpired(String url) {
    return _cacheRepository.isExpired(url);
  }

  /// Deletes the given url from the cache.
  /// If it does not exist, nothing happens.
  Future<bool> deleteItem(String url) async {
    return _cacheRepository.deleteItem(url);
  }

  /// Delete all caches
  Future<void> deleteAllItem() async {
    return _cacheRepository.deleteAllItem();
  }
}
