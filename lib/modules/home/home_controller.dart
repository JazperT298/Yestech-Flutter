import 'package:get/get.dart';
import 'package:yestech_flutter/modules/home/home_api.dart';

class HomeController extends GetxController {
  var statisticsSubject = ''.obs;
  var statisticsStudents = ''.obs;
  var statisticsTopcis = ''.obs;
  var mainSubjects = 0.obs;
  var mainFiles = 0.obs;
  var mainConnections = 0.obs;
  var mainNewfeed = 0.obs;
  var mainVideoLab = 0.obs;
  var mainCourses = 0.obs;
  var mainMyVideos = 0.obs;
  @override
  void onInit() {
    getEducatorStatistics();
    getUserConnections();
    getNewsFeed();
    getAllVideoLabs();
  }

  Future<String> getEducatorStatistics() async {
    try {
      var result = await HomeApi.getEducatorStatistics();
      statisticsSubject.value = result[0]['subject_count'];
      statisticsStudents.value = result[0]['student_count'];

      return 'success';
    } catch (e) {
      print('err $e');
      return 'catch';
    }
  }

  Future<String> getUserConnections() async {
    try {
      var result = await HomeApi.getUserConnections();
      print(result);
      return 'success';
    } catch (e) {
      print('err $e');
      return 'catch';
    }
  }

  Future<String> getNewsFeed() async {
    try {
      var result = await HomeApi.getNewsFeed();
      print(result);
      return 'success';
    } catch (e) {
      print('err $e');
      return 'catch';
    }
  }

  Future<String> getAllVideoLabs() async {
    try {
      var result = await HomeApi.getAllVideoLabs();
      mainVideoLab.value = result;
      print(mainVideoLab.value);
      return 'success';
    } catch (e) {
      print('err $e');
      return 'catch';
    }
  }
}
