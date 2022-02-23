import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:studo/model/user_model.dart';

class SharedPref {
  static String isLogin = "User is Logged in";
  static String firstTimeAppOpen = "First time opening app";

  SharedPreferences? _preferences;

  SharedPref() {
    init();
  }

  Future init() async {
    _preferences = await SharedPreferences.getInstance();
  }

  void setUser(UserModel userModel) {
    _preferences!.setString(isLogin, userModel.toJson());
  }

  String read() {
    const key = 'token';
    String value = _preferences!.getString(key)!;
    return value;
  }

  UserModel? getUser() {
    var user = _preferences!.getString(isLogin);
    print('user details $user');
    if (user != null && user.isNotEmpty) {
      var json = jsonDecode(user);
      UserModel userData = UserModel.fromJson(json);
      return userData;
    } else {
      return null;
    }
  }

  saveToken(String value) {
    _preferences!.setString('token', value);
  }

  void setFirstTimeAppOpen(bool value) {
    _preferences!.setBool(firstTimeAppOpen, value);
  }

  bool getFirstTimeAppOpen() {
    var value = _preferences!.getBool(firstTimeAppOpen);
    // ignore: avoid_print
    print('Am i a new user? $value');
    return value == null ? true : value;
  }

  void logout() {
    _preferences!.setString(isLogin, '');
  }
}
