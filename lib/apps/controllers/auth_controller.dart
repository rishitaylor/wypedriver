import 'package:get/get.dart';
import 'package:wypedriver/apps/services/location_services.dart';

class AuthController extends GetxController {
  RxBool isLoading = false.obs;
  @override
  void onInit() {
    // TODO: implement onInit
    // LocationService().getCurrentLocation();
    super.onInit();
  }
}
