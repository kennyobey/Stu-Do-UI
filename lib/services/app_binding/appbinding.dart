import 'package:get/get.dart';
import 'package:studo/services/repository/auth_repository.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(AuthenticationRepository(), permanent: true);
  }
}
