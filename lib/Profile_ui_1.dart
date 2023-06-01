import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:icons_plus/icons_plus.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      home: Profile_ui_1(),
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
    ),
  ));
}

class Profile_ui_1 extends StatelessWidget {
  Profile_ui_1({Key? key}) : super(key: key);

  var Icons2 = [
    Icon(
      Icons.privacy_tip_outlined,
      color: Colors.black,
    ),
    Icon(
      Icons.history,
      color: Colors.black,
    ),
    Icon(
      Icons.help_outline_sharp,
      color: Colors.black,
    ),
    Icon(
      Icons.settings_outlined,
      color: Colors.black,
    ),
    Icon(
      Icons.person_add_alt,
      color: Colors.black,
    ),
    Icon(
      Icons.logout,
      color: Colors.black,
    ),
  ];

  var texts2 = [
    'Privacy',
    'Purchase History',
    'Help & Support',
    'Settings',
    'Invite a friend',
    'Logout'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const ListTile(
          leading: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          trailing: Icon(
            Icons.menu,
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        children: [
          CircleAvatar(
            radius: 70,
            backgroundImage: NetworkImage(
              'https://images.unsplash.com/photo-1502823403499-6ccfcf4fb453?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80',
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(child: Icon(FaIcon.facebook,color: Colors.white,),backgroundColor: Colors.blueAccent,),
              Icon(EvaIcons.twitter,color: Colors.blue,),
              Icon(EvaIcons.linkedin,color: Colors.lightBlue[900],),
              Icon(EvaIcons.github),
            ],
          ),
          Text(
            'ghs',
          ),
          Text('fdsh'),
          Text('gdsfg'),

          Container(
            color: Colors.yellow,
            width: 500,
            height: 500,
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Container(
                  // color: Colors.green,
                  child: ListTile(
                    leading: Icons2[index],
                    title: Text(
                      texts2[index],
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    trailing: Icon(
                      Icons.keyboard_arrow_right,
                      color: Colors.black,
                    ),
                  ),
                );
              },
              itemCount: 6,
            ),
          )
        ],
      ),
    );
  }
}
