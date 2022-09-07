import 'package:hive/hive.dart';

import 'models/cache.dart';

class ErrorUpdate implements Exception {}

class ErrorGetItem implements Exception {}

class ErrorAddItem implements Exception {}

class ErrorDeleteItem implements Exception {}

class DbRepository {
  Box<Cache>? _box;

  /// Opens a box.
  Future<void> hiveOpenBox(String name) async {
    _box ??= await Hive.openBox<Cache>(name);
  }

  bool isBoxOpen(String name) => Hive.isBoxOpen(name);

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

  bool isItemAvailable(String key) {
    return _box!.containsKey(key);
  }

  Iterable<Cache>? getAllItem() {
    final item = _box?.values;
    return item;
  }

  Future<void> deleteItem(String key) async {
    try {
      await _box!.delete(key);
      getAllItem();
    } on Exception {
      throw ErrorDeleteItem();
    }
  }

  Future<void> deleteAllItem() async {
    await _box!.deleteFromDisk();
  }
}
