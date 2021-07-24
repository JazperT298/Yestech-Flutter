import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yestech_flutter/configs/app_configs.dart';
import 'package:yestech_flutter/modules/connects/connection_educator_view.dart';
import 'package:yestech_flutter/modules/home/home_controller.dart';
import 'package:yestech_flutter/modules/subjects/subject_educator_view.dart';
import 'package:yestech_flutter/services/get_storage_service.dart';
import 'package:sizer/sizer.dart';

class HomeEducatorView extends StatefulWidget {
  const HomeEducatorView({key}) : super(key: key);

  @override
  _HomeEducatorViewState createState() => _HomeEducatorViewState();
}

class _HomeEducatorViewState extends State<HomeEducatorView> {
  final TextStyle whiteText = TextStyle(color: Colors.white);
  final controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    final config = App(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: config.appHeight(15),
                padding: EdgeInsets.only(
                  top: 15.0,
                  left: 15.0,
                  right: 15.0,
                ),
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(25.0),
                      bottomLeft: Radius.circular(25.0),
                    )),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Dashboard',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: [
                            Icon(Icons.search, size: 40, color: Colors.white),
                            SizedBox(
                              width: 5.0,
                            ),
                            Image.asset(
                              'assets/images/user_placeholder.png',
                              height: 40,
                              width: 40,
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Text(
                        GetStorageService.c.appdata.read('user_firstname') ??
                            'NO NAME',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.sp,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 4.0,
                    ),
                    Container(
                      width: double.infinity,
                      child: Text(
                        'Master of Educator',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 11.sp,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(
                  top: 20.0,
                  left: 15.0,
                  right: 15.0,
                ),
                child: Text(
                  'Statistics',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                height: config.appHeight(10),
                margin: EdgeInsets.only(
                  top: 15.0,
                  left: 15.0,
                  right: 15.0,
                ),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.green[800], width: 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Column(
                      children: [
                        Image.asset(
                          'assets/images/ic_subjects_colored.png',
                          height: 30,
                          width: 30,
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Obx(
                          () => Text(
                            '${controller.statisticsSubject.value} Subjects',
                            style: TextStyle(
                              fontSize: 8.sp,
                            ),
                          ),
                        ),
                      ],
                    ).paddingSymmetric(vertical: 2.h),
                    Column(
                      children: [
                        Image.asset(
                          'assets/images/ic_students_colored.png',
                          height: 30,
                          width: 30,
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Obx(
                          () => Text(
                            '${controller.statisticsStudents.value} Students',
                            style: TextStyle(
                              fontSize: 8.sp,
                            ),
                          ),
                        ),
                      ],
                    ).paddingSymmetric(vertical: 2.h),
                    Column(
                      children: [
                        Image.asset(
                          'assets/images/ic_topics_colored.png',
                          height: 30,
                          width: 30,
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          '0 Topics',
                          style: TextStyle(
                            fontSize: 8.sp,
                          ),
                        ),
                      ],
                    ).paddingSymmetric(vertical: 2.h),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 2,
                      child: GestureDetector(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => SubjectEducatorView(),
                          ),
                        ),
                        child: Obx(
                          () => _buildTile(
                            color: Colors.red,
                            icon: Icons.subject,
                            title: "Subjects",
                            data: "${controller.statisticsSubject.value}",
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 15.0),
                    Expanded(
                      child: GestureDetector(
                        // onTap: () => Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (_) => NotesScreen(),
                        //   ),
                        // ),
                        child: Obx(
                          () => _buildTile(
                            color: Colors.purple,
                            icon: Icons.note,
                            title: "Files",
                            data: '${controller.mainFiles.value}',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: GestureDetector(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => ConnectionEducatorView(),
                          ),
                        ),
                        child: Obx(
                          () => _buildTile(
                            color: Colors.deepOrangeAccent,
                            icon: Icons.language,
                            title: "Connections",
                            data: '${controller.mainConnections.value}',
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 15.0),
                    Expanded(
                      child: GestureDetector(
                        // onTap: () => Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (_) => FeedScreen(
                        //       currentUserId: currentUserId,
                        //       userId: currentUserId,
                        //     ),
                        //   ),
                        // ),
                        child: Obx(
                          () => _buildTile(
                            color: Colors.green,
                            icon: Icons.assignment,
                            title: "NewFeeds",
                            data: '${controller.mainNewfeed.value}',
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 15.0),
                    Expanded(
                      child: GestureDetector(
                        // onTap: () => Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (_) => VideolabScreen(
                        //     ),
                        //   ),
                        // ),
                        child: Obx(
                          () => _buildTile(
                            color: Colors.indigo,
                            icon: Icons.video_library,
                            title: "Video Lab",
                            data: '${controller.mainVideoLab.value}',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.0),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: GestureDetector(
                        // onTap: () => Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (_) => CoursesScreen(),
                        //   ),
                        // ),
                        child: Obx(
                          () => _buildTile(
                            color: Colors.lightBlue,
                            icon: Icons.payment,
                            title: "Courses",
                            data: '${controller.mainCourses.value}',
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 15.0),
                    Expanded(
                      flex: 2,
                      child: GestureDetector(
                        // onTap: () => Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (_) => MyVideosScreen(),
                        //   ),
                        // ),
                        child: Obx(
                          () => _buildTile(
                            color: Colors.lightGreen,
                            icon: Icons.ondemand_video,
                            title: "My Videos",
                            data: '${controller.mainMyVideos.value}',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container _buildTile(
      {Color color, IconData icon, String title, String data}) {
    return Container(
      padding: EdgeInsets.all(8.0),
      height: 140.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        color: color,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Icon(
            icon,
            color: Colors.white,
            size: 35,
          ),
          Text(
            title,
            style: whiteText.copyWith(
                fontWeight: FontWeight.bold, fontSize: 11.sp),
          ),
          Text(
            data,
            style: whiteText.copyWith(
                fontWeight: FontWeight.bold, fontSize: 10.sp),
          ),
        ],
      ),
    );
  }
}
