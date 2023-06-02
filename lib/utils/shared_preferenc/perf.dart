import 'package:shared_preferences/shared_preferences.dart';

class SimpleUserPreferences {
  static SharedPreferences? _prefs;

  static Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

//setter
  static Future setToken(String value) async {
    await _prefs?.setString('token', value);
  }

  static Future setPhoneNumber(String value) async {
    await _prefs?.setString('phone_number', value);
  }

  static Future setFirstName(String value) async {
    await _prefs?.setString('first_name', value);
  }

  static Future setLastName(String value) async {
    await _prefs?.setString('last_name', value);
  }

  static Future setUserGender(String value) async {
    await _prefs?.setString('gender', value);
  }

  static Future setUserName(String value) async {
    await _prefs?.setString('username', value);
  }

  static Future setBirthday(String value) async {
    await _prefs?.setString('birthday', value);
  }

  static Future setUserId(String value) async {
    await _prefs?.setString('user_id', value);
  }

  static Future setUserStatus(String value) async {
    await _prefs?.setString('user_status', value);
  }

//geter
  static String? getToken() {
    return _prefs?.getString('token');
  }

  static String? getPhoneNumber() {
    return _prefs?.getString('phone_number');
  }

  static String? getFirstName() {
    return _prefs?.getString('first_name');
  }

  static String? getLastName() {
    return _prefs?.getString('last_name');
  }

  static String? getUserGender() {
    return _prefs?.getString('gender');
  }

  static String? getUserName() {
    return _prefs?.getString('username');
  }

  static String? getBirthday() {
    return _prefs?.getString('birthday');
  }

  static String? getUserId() {
    return _prefs?.getString('user_id');
  }

  static String? getUserStatus() {
    return _prefs?.getString('user_status');
  }

  static delete() {
    return _prefs?.clear();
  }
}
