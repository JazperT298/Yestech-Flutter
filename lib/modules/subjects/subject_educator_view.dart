import 'package:flutter/material.dart';

class SubjectEducatorView extends StatefulWidget {
  const SubjectEducatorView({key}) : super(key: key);

  @override
  _SubjectEducatorViewState createState() => _SubjectEducatorViewState();
}

class _SubjectEducatorViewState extends State<SubjectEducatorView> {
  List<SubjectModel> subjectList = <SubjectModel>[
    SubjectModel(
        title: 'Math 1', code: 'ERQS345WE345', year: '2020', student: '0'),
    SubjectModel(
        title: 'Science 1', code: 'FERTW3451WEE', year: '2020', student: '1'),
    SubjectModel(
        title: 'English 1', code: 'HJKKASD23FSS', year: '2020', student: '2'),
    SubjectModel(
        title: 'Geometry 1', code: 'XVZNMFSD31DFD', year: '2020', student: '3'),
    SubjectModel(
        title: 'Filipino 1', code: 'QWEASC232FGG', year: '2020', student: '4'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          'Your Subjects',
          style: TextStyle(
            fontSize: 14,
          ),
        ),
        actions: [
          MaterialButton(
            onPressed: () {},
            child: Text(
              'Add New',
              style: TextStyle(
                color: Colors.white,
                fontSize: 13,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: Container(
          height: 800.0,
          width: double.maxFinite,
          child: ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            itemCount: subjectList.length,
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
                              subjectList[index].title,
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
                              subjectList[index].code,
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
                              subjectList[index].year,
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
                              subjectList[index].code,
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
    );
  }
}

class SubjectModel {
  String title;
  String code;
  String year;
  String student;

  SubjectModel({this.title, this.code, this.year, this.student});
}
