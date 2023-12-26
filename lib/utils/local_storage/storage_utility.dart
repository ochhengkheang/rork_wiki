import 'package:get_storage/get_storage.dart';

class RokWikiLocalStorage {
  static final RokWikiLocalStorage _instance = RokWikiLocalStorage._internal();

  RokWikiLocalStorage._internal();

  //always returns the _instance variable,
  //ensuring that there's only one instance of MyLocalStorage in your app.
  factory RokWikiLocalStorage() {
    return _instance;
  }

  final _storage = GetStorage();

  // Generic Methods to save data
  Future<void> saveData<T>(String key, T value) async {
    await _storage.write(key, value);
  }

  // Generic Methods to read data
  T? readData<T>(String key) {
    return _storage.read(key);
  }

  // Generic Methods to remove data
  Future<void> removeData(String key) async {
    await _storage.remove(key);
  }

  // Generic Methods to clear all data
  Future<void> clearAllData() async {
    await _storage.erase();
  }
}
