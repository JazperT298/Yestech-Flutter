import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class GetStorageService extends GetxService {
  static GetStorageService c = Get.find();
  final appdata = GetStorage();
}
