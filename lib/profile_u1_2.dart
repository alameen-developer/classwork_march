import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: profile_ui_2(),
    debugShowCheckedModeBanner: false,
  ));
}

class profile_ui_2 extends StatelessWidget {
  const profile_ui_2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Profile'),
        actions: [
          PopupMenuButton(itemBuilder: (contest) {
            return [
              PopupMenuItem(child: Text('Settings')),
              PopupMenuItem(child: Text('Settings')),
              PopupMenuItem(child: Text('Settings')),
            ];
          }),
        ],
      ),
      drawer: Drawer(),
      body: Container(),
    );
  }
}
