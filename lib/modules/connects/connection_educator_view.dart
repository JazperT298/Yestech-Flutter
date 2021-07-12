import 'package:flutter/material.dart';

class ConnectionEducatorView extends StatefulWidget {
  const ConnectionEducatorView({key}) : super(key: key);

  @override
  _ConnectionEducatorViewState createState() => _ConnectionEducatorViewState();
}

class _ConnectionEducatorViewState extends State<ConnectionEducatorView> {
  List<ConnectionModel> connectionList = <ConnectionModel>[
    ConnectionModel(name: 'Kirk Hammett'),
    ConnectionModel(name: 'James Hitfield'),
    ConnectionModel(name: 'Dave Mustaine'),
    ConnectionModel(name: 'Lars Ulrich'),
    ConnectionModel(name: 'Marty Friedman'),
    ConnectionModel(name: 'John Petrucci'),
    ConnectionModel(name: 'Mike Portnoy'),
    ConnectionModel(name: 'Jordan Ruddess'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: Text(
          'Your Connections',
          style: TextStyle(
            fontSize: 14,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          height: 800.0,
          width: double.maxFinite,
          margin: EdgeInsets.only(top: 15.0, left: 15.0, right: 15.0),
          child: ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: connectionList.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.deepOrangeAccent,
                      child: Icon(Icons.person, color: Colors.white),
                    ),
                    title: Text(
                      '${connectionList[index].name}',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ),
                );
              }),
        ),
      ),
    );
  }
}

class ConnectionModel {
  String name;

  ConnectionModel({this.name});
}
