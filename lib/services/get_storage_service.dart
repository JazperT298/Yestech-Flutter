import 'package:device_info/device_info.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class GetStorageService extends GetxService {
  static GetStorageService c = Get.find();
  final appdata = GetStorage();

  var deviceInchSize = 0.0.obs;

  RxString userId = ''.obs;
  RxString userToken = ''.obs;
  RxString roleType = ''.obs;

  void getDeviceScreenSize() {
    var inchByhundred = ((Get.height + Get.width) / 2) / 100;
    String inch = inchByhundred.toStringAsFixed(2);
    deviceInchSize.value = double.parse(inch);
    print('deviceInchSize $deviceInchSize');
  }

  @override
  void onInit() {
    super.onInit();
    getDeviceScreenSize();
    //userId.value = appdata.read('user_id');

    if (GetPlatform.isAndroid) {
      getDeviceinfoAndroid();
    } else {
      getDeviceinfoIoS();
    }
  }

  void setLoginStorage(userId, userToken, roleType, result) {
    appdata.write('user_id', userId);
    appdata.write('user_token', userToken);
    appdata.write('role_type', roleType);
    appdata.write('result', result);
    print('set user login storage..');
  }

  void setUserDataStorage(
    email_address,
    firsname,
    lastname,
    middlename,
    suffix,
    gender,
    contact_number,
    image,
    educational_attainment,
    subj_major,
    current_school,
    position,
    facebook,
    instagram,
    twitter,
    gmail,
    motto,
    user_activation,
    user_role,
    validated,
    connection,
  ) {
    appdata.write('user_email_address', email_address);
    appdata.write('user_firstname', firsname);
    appdata.write('user_lastname', lastname);
    appdata.write('user_middlename', middlename);
    appdata.write('user_suffixes', suffix);
    appdata.write('user_gender', gender);
    appdata.write('user_contact_number', contact_number);
    appdata.write('user_image', image);
    appdata.write('user_educational_attainment', educational_attainment);
    appdata.write('user_subj_major', subj_major);
    appdata.write('user_current_school', current_school);
    appdata.write('user_position', position);
    appdata.write('user_facebook', facebook);
    appdata.write('user_instagram', instagram);
    appdata.write('user_twitter', twitter);
    appdata.write('user_gmail', gmail);
    appdata.write('user_motto', motto);
    appdata.write('user_activation', user_activation);
    appdata.write('user_role', user_role);
    appdata.write('validated', validated);
    appdata.write('connection', connection);
    print('set user Data storage..');
  }

  void removeUserStorage() {
    appdata.erase();
    print('erase user Data storage..');
  }

  void printStorage() {
    print(appdata.read('firstname'));
    print(appdata.read('lastname'));
    print(appdata.read('contactnumber'));
    print(appdata.read('email'));
  }

  DeviceInfoPlugin androiddeviceInfo = DeviceInfoPlugin();
  DeviceInfoPlugin iosdeviceInfo = DeviceInfoPlugin();
  var androidboard = ''.obs;
  var androidbrand = ''.obs;
  var androiddevice = ''.obs;
  var androidhardware = ''.obs;
  var androidhost = ''.obs;
  var id = ''.obs;
  var androidmanufacture = ''.obs;
  var androidmodel = ''.obs;
  var androidproduct = ''.obs;
  var androidtype = ''.obs;
  var androidid = ''.obs;
  var isphysicaldevice = false.obs;
  AndroidDeviceInfo androidDeviceInfo;
  var iosname = ''.obs;
  var iossystemName = ''.obs;
  var iossystemVersion = ''.obs;
  var iosmodel = ''.obs;
  var ioslocalizedModel = ''.obs;
  var iosidentifierForVendor = ''.obs;
  var iossysname = ''.obs;
  var isIosPhysicalDevice = false.obs;
  IosDeviceInfo iosDeviceInfo;

  getDeviceinfoAndroid() async {
    androidDeviceInfo = await androiddeviceInfo.androidInfo;
    androidboard.value = androidDeviceInfo.board;
    androidbrand.value = androidDeviceInfo.brand;
    androiddevice.value = androidDeviceInfo.device;
    androidhardware.value = androidDeviceInfo.hardware;
    androidhost.value = androidDeviceInfo.host;
    id.value = androidDeviceInfo.id;
    androidmanufacture.value = androidDeviceInfo.manufacturer;
    androidmodel.value = androidDeviceInfo.model;
    androidproduct.value = androidDeviceInfo.product;
    androidtype.value = androidDeviceInfo.type;
    isphysicaldevice.value = androidDeviceInfo.isPhysicalDevice;
    androidid.value = androidDeviceInfo.androidId;
    print("id android : $id");
    print("androidid adroid : $androidid");
    print("android model $androidmodel");
    print("android brand :$androidbrand");
  }

  getDeviceinfoIoS() async {
    iosDeviceInfo = await iosdeviceInfo.iosInfo;
    iosname.value = iosDeviceInfo.name;
    iossystemName.value = iosDeviceInfo.systemName;
    iossystemVersion.value = iosDeviceInfo.systemVersion;
    iosmodel.value = iosDeviceInfo.model;
    ioslocalizedModel.value = iosDeviceInfo.localizedModel;
    iosidentifierForVendor.value = iosDeviceInfo.identifierForVendor;
    isIosPhysicalDevice.value = iosDeviceInfo.isPhysicalDevice;
    iossysname.value = iosDeviceInfo.systemName;
    print("name ios : $iosname");
    print("systemName ios: $iossystemName");
    print("system version ios: $iossystemVersion");
    print("model ios: $iosmodel");
  }
}
