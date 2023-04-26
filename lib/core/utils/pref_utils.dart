import 'package:shared_preferences/shared_preferences.dart';

// ignore_for_file: must_be_immutable
class PrefUtils {
  factory PrefUtils() {
    return _instance!;
  }

  PrefUtils._internal();

  static SharedPreferences? _sharedPreferences;

  static final PrefUtils? _instance = PrefUtils._internal();

  Future<void> init() async {
    _sharedPreferences ??= await SharedPreferences.getInstance();
    print('SharedPreference Initialized');
  }

  ///will clear all the data stored in preference
  void clearPreferencesData() async {
    _sharedPreferences!.clear();
  }

  Future<void> setUserName(String value) {
    return _sharedPreferences!.setString('userName', value);
  }

  String getUserName() {
    try {
      return _sharedPreferences!.getString('userName') ?? '';
    } catch (e) {
      return '';
    }
  }

  Future<void> setUserEmail(String value) {
    return _sharedPreferences!.setString('userEmail', value);
  }

  String getUserEmail() {
    try {
      return _sharedPreferences!.getString('userEmail') ?? '';
    } catch (e) {
      return '';
    }
  }

  Future<void> setUserToken(String value) {
    return _sharedPreferences!.setString('userToken', value);
  }

  String getUserToken() {
    try {
      return _sharedPreferences!.getString('userToken') ?? '';
    } catch (e) {
      return '';
    }
  }
}
