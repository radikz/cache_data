import 'package:hive/hive.dart';

import 'models/cache.dart';

class ErrorUpdate implements Exception {}

class ErrorGetItem implements Exception {}

class ErrorAddItem implements Exception {}

class ErrorDeleteItem implements Exception {}

class DbRepository {
  Box<Cache>? _box;

  /// Opens a box.
  Future<Box<Cache>?> hiveOpenBox(String name) async {
    _box ??= await Hive.openBox<Cache>(name);
    return _box;
  }

  /// Saves the key - value pair.
  void put(String key, Cache value) {
    try {
      _box!.put(key, value);
    } on Exception {
      throw ErrorUpdate();
    }
  }

  Cache? getItem(String key) {
    final item = _box?.get(key);
    return item;
  }

  Iterable<Cache>? getAllItem() {
    final item = _box?.values;
    return item;
  }

  void deleteItem(String key) async {
    try {
      _box!.delete(key);
      getAllItem();
    } on Exception {
      throw ErrorDeleteItem();
    }
  }
}
