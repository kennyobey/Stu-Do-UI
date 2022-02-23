import 'package:get/get.dart';

enum Status {
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
}
