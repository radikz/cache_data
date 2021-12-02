library cache_repository;

import 'src/cache_data.dart' as cache;
import 'package:hive_flutter/hive_flutter.dart';
import 'package:http/http.dart' as http;
import 'src/models/cache.dart';

class CacheData<T> {
  /// Initialize Hive DB with the path from [getApplicationDocumentsDirectory]
  static Future<void> init([String? subDir]) async {
    await Hive.initFlutter(subDir);
    Hive.registerAdapter(CacheAdapter());
  }

  /// Fetch data from [HiveDB] with url as a key. If the database is empty,
  /// Sends an [HTTP] [GET] request to the given url then store the data in the
  /// [HiveDB] with [duration] as the age of the data.
  ///
  /// Return Dart object.
  Future<T?> fetchData(
      {required String url, required Duration duration, http.Client? client}) {
    return cache.CacheData<T>(client: client).checkDb(url, duration);
  }
}
