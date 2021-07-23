import 'package:get/get.dart';
import 'package:yestech_flutter/modules/home/home_api.dart';

class HomeController extends GetxController {
  @override
  void onInit() {
    HomeApi.getEducatorDetails();
  }
}
