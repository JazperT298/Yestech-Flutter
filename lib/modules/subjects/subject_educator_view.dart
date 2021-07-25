import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yestech_flutter/modules/colors.dart';
import 'package:sizer/sizer.dart';
import 'package:yestech_flutter/modules/manage_subject/manage_subject_controller.dart';
import 'package:yestech_flutter/modules/manage_subject/manage_subject_drawer.dart';
import 'package:yestech_flutter/modules/subjects/subject_controller.dart';
import 'package:yestech_flutter/routes/app_routes.dart';

class SubjectEducatorView extends StatelessWidget {
  final controller = Get.put(SubjectController());
  final manageSubjectController = Get.put(ManageSubjectController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: controller.scaffoldKey,
      endDrawer: ManageSubjectDrawer(),
      appBar: AppBar(
        backgroundColor: toungeColor,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Get.back();
          },
        ),
        title: Text(
          'Your Subjects',
          style: TextStyle(
            fontSize: 12.sp,
            color: lightMainColor,
          ),
        ),
        actions: [
          MaterialButton(
            onPressed: () {},
            child: Text(
              'Add New',
              style: TextStyle(
                color: Colors.white,
                fontSize: 12.sp,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: Container(
          height: 1500.0,
          width: double.maxFinite,
          margin: EdgeInsets.only(bottom: 50.0),
          child: Obx(
            () => ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              reverse: true,
              itemCount: controller.listOFSubject.length,
              itemBuilder: (context, index) {
                return Container(
                  height: 135, //120,
                  margin: EdgeInsets.only(top: 15.0, left: 15.0, right: 15.0),
                  padding: EdgeInsets.only(top: 15.0, left: 15.0, right: 15.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.redAccent)),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.subject,
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                controller.listOFSubject[index].subjTitle,
                                style: TextStyle(
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.qr_code,
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                controller.listOFSubject[index].subjCode,
                                style: TextStyle(
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.calendar_today,
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                controller.listOFSubject[index].subjSchoolYear,
                                style: TextStyle(
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.person,
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                controller.listOFSubject[index].studentCount,
                                style: TextStyle(
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 10.0),
                      Container(
                        height: 0.5,
                        color: Colors.black26,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.delete,
                                color: toungeColor,
                              )),
                          InkWell(
                            onTap: () {
                              var id = controller.listOFSubject[index].subjId;
                              print(id);
                              manageSubjectController.subjectId.value =
                                  int.parse(
                                      controller.listOFSubject[index].subjId);
                              manageSubjectController.subjectTitle.value =
                                  controller.listOFSubject[index].subjTitle;
                              controller.scaffoldKey.currentState
                                  .openEndDrawer();
                              //Get.toNamed(AppRoutes.MANAGESUBJECT);
                            },
                            child: Container(
                              height: 35,
                              width: 110.0,
                              decoration: BoxDecoration(
                                color: toungeColor,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Center(
                                  child: Text(
                                'Manage',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              )),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
