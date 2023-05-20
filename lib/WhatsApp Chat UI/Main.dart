import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      home: const whatsapp1(),
      debugShowCheckedModeBanner: false,
      useInheritedMediaQuery: true,
      theme: ThemeData(primarySwatch: Colors.teal),
    ),
  ));
}

class whatsapp1 extends StatelessWidget {
  const whatsapp1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('WhatsApp'),
          bottom: const TabBar(tabs: [
            Tab(icon: Icon(Icons.people)),
            Tab(text: 'Chats'),
            Tab(text: 'Status'),
            Tab(text: 'Calls')
          ]),
        ),
        body: TabBarView(children: []),
      ),
    );
  }
}
