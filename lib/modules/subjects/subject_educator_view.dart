import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yestech_flutter/modules/colors.dart';
import 'package:sizer/sizer.dart';
import 'package:yestech_flutter/modules/subjects/subject_controller.dart';

class SubjectEducatorView extends StatelessWidget {
  final controller = Get.put(SubjectController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
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
                                color: Colors.red,
                              )),
                          Container(
                            height: 35,
                            width: 110.0,
                            decoration: BoxDecoration(
                              color: Colors.redAccent,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Center(
                                child: Text(
                              'Manage',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            )),
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
