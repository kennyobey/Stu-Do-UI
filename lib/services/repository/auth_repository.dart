import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:studo/model/user_model.dart';
import 'package:studo/services/api/api_link.dart';
import 'package:studo/services/shared_preference/shared_pref.dart';

enum Status {
  IsFirstTime,
  Loading,
  Authenticated,
  Unauthenticated,
  Error,
  Empty,
}

class AuthenticationRepository extends GetxController {
  final _errorMessage = "".obs;
  final token = "".obs;
  final _status = Status.Empty.obs;

  String get errorMessage => _errorMessage.value;
  Status get status => _status.value;

  UserModel? userData;
  Rx<UserModel> user = Rx(UserModel());

  SharedPref? sharedPref;

  @override
  void onInit() async {
    sharedPref = SharedPref();
    await sharedPref!.init();

    if (sharedPref!.getFirstTimeAppOpen()) {
      print('This is my first time using this app');
      _status(Status.IsFirstTime);
    } else {
      print('Not my first time using the app');
      if (sharedPref!.getUser() != null) {
        userData = sharedPref!.getUser()!;
        token(sharedPref!.read());
        print('user token: ${token.value}');
        user(userData);

        _status(Status.Authenticated);
        if (token.value == '0') {
          _status(Status.Unauthenticated);
        } else {
          _status(Status.Authenticated);
        }
      }
    }

    super.onInit();
  }

  Future<dynamic> createAccount(UserModel userModel) async {
    try {
      _status(Status.Loading);

      print('trying to create account');
      print('request json ${userModel.toJson()}');
      var response = await http.post(
        Uri.parse(ApiLink.signUp),
        body: jsonEncode(userData!.toJson()),
        headers: {"Content-Type": "application/json"},
      );

      if (response != null) {
        print('Response body: ${response.body}');
        _status(Status.Authenticated);

        if (response.statusCode == 201) {
          print('Response body: ${response.body}');
        } else if (response.statusCode == 400) {
          print('Response body: ${response.body}');
        }
      }
    } catch (e) {
      print('error ${e.toString()}');
      _status(Status.Error);
      _errorMessage(e.toString());
    }
  }
}
