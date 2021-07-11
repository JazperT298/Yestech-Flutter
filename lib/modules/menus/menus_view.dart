import 'package:flutter/material.dart';
import 'package:yestech_flutter/configs/app_configs.dart';

class MenusView extends StatefulWidget {
  const MenusView({key}) : super(key: key);

  @override
  _MenusViewState createState() => _MenusViewState();
}

class _MenusViewState extends State<MenusView> {
  @override
  Widget build(BuildContext context) {
    final config = App(context);

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Menu'),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: config.appHeight(100),
          child: Column(
            children: [
              SizedBox(
                height: 3.0,
              ),
              // Container(
              //   height: config.appHeight(5),
              //   margin: EdgeInsets.symmetric(horizontal: 15.0),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     children: [
              //       Text('Version'),
              //       Icon(
              //         Icons.arrow_forward_ios,
              //       )
              //     ],
              //   ),
              // ),
              // Divider(),
              Container(
                height: config.appHeight(5),
                margin: EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('About Us'),
                    Icon(
                      Icons.arrow_forward_ios,
                    )
                  ],
                ),
              ),
              Divider(),
              Container(
                height: config.appHeight(5),
                margin: EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Services'),
                    Icon(
                      Icons.arrow_forward_ios,
                    )
                  ],
                ),
              ),
              Divider(),
              Container(
                height: config.appHeight(5),
                margin: EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Our Blog'),
                    Icon(
                      Icons.arrow_forward_ios,
                    )
                  ],
                ),
              ),
              Divider(),
              Container(
                height: config.appHeight(5),
                margin: EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Contact Us'),
                    Icon(
                      Icons.arrow_forward_ios,
                    )
                  ],
                ),
              ),
              Divider(),
              // Container(
              //   height: config.appHeight(5),
              //   margin: EdgeInsets.symmetric(horizontal: 15.0),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     children: [
              //       Text('Logout'),
              //       Icon(
              //         Icons.arrow_forward_ios,
              //       )
              //     ],
              //   ),
              // ),
              // Divider(),
            ],
          ),
        ),
      ),
    );
  }
}
