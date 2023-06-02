import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SimpleUserStorage {
  static late FlutterSecureStorage _storage;

  static Future<void> init() async {
    _storage = FlutterSecureStorage();
  }

  Future setToken(String value) async {
    var writeData = await _storage.write(key: 'token', value: value);
    return writeData;
  }

  Future<String?> getToken() async {
    return await _storage.read(key: 'token');
  }

  Future delete() async {
    return await _storage.delete(key: 'token');
  }
}
