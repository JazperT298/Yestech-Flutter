import 'package:flutter/material.dart';
import 'package:yestech_flutter/configs/app_configs.dart';
import 'package:yestech_flutter/modules/subjects/subject_educator_view.dart';

class HomeEducatorView extends StatefulWidget {
  const HomeEducatorView({key}) : super(key: key);

  @override
  _HomeEducatorViewState createState() => _HomeEducatorViewState();
}

class _HomeEducatorViewState extends State<HomeEducatorView> {
  final TextStyle whiteText = TextStyle(color: Colors.white);
  @override
  Widget build(BuildContext context) {
    final config = App(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            height: config.appHeight(100),
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
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.search,
                                size: 30,
                              ),
                              SizedBox(
                                width: 5.0,
                              ),
                              Image.asset(
                                'assets/images/user_placeholder.png',
                                height: 30,
                                width: 30,
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
                          'Jasper Tony Atillo',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 4.0,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: Text(
                          'Master of Educator',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.only(
                    top: 15.0,
                    left: 15.0,
                    right: 15.0,
                  ),
                  child: Text(
                    'Statistics',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  height: config.appHeight(9),
                  margin: EdgeInsets.only(
                    top: 5.0,
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
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 11.0),
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images/ic_subjects_colored.png',
                              height: 30,
                              width: 30,
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              '100 Subjects',
                              style: TextStyle(
                                fontSize: 11,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 11.0),
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images/ic_students_colored.png',
                              height: 30,
                              width: 30,
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              '100 Students',
                              style: TextStyle(
                                fontSize: 11,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 11.0),
                        child: Column(
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
                              '100 Topics',
                              style: TextStyle(
                                fontSize: 11,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15.0,
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
                          child: _buildTile(
                            color: Colors.red,
                            icon: Icons.subject,
                            title: "Subjects",
                            data: "11",
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
                          child: _buildTile(
                            color: Colors.purple,
                            icon: Icons.note,
                            title: "Notes",
                            data: "857",
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15.0),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: GestureDetector(
                          // onTap: () => Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //     builder: (_) => ConnectionScreen(),
                          //   ),
                          // ),
                          child: _buildTile(
                            color: Colors.deepOrangeAccent,
                            icon: Icons.language,
                            title: "Connections",
                            data: "864",
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
                          child: _buildTile(
                            color: Colors.green,
                            icon: Icons.assignment,
                            title: "NewFeeds",
                            data: "857",
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
                          child: _buildTile(
                            color: Colors.indigo,
                            icon: Icons.video_library,
                            title: "Video Lab",
                            data: "698",
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15.0),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
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
                          child: _buildTile(
                            color: Colors.lightBlue,
                            icon: Icons.payment,
                            title: "Courses",
                            data: "100",
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
                          child: _buildTile(
                            color: Colors.lightGreen,
                            icon: Icons.ondemand_video,
                            title: "My Videos",
                            data: "100",
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
      ),
    );
  }

  Container _buildTile(
      {Color color, IconData icon, String title, String data}) {
    return Container(
      padding: EdgeInsets.all(8.0),
      height: 130.0,
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
          ),
          Text(
            title,
            style: whiteText.copyWith(fontWeight: FontWeight.bold),
          ),
          Text(
            data,
            style:
                whiteText.copyWith(fontWeight: FontWeight.bold, fontSize: 14.0),
          ),
        ],
      ),
    );
  }
}
