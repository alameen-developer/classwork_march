import 'package:classwork_march/WhatsApp%20Chat%20UI/chats.dart';
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
          actions: [
            const Icon(Icons.camera_alt_outlined),
            const SizedBox(width: 15),
            const Icon(Icons.search),
            const SizedBox(width: 15),
            PopupMenuButton(itemBuilder: (context) {
              return [];
            }),
          ],
          bottom: TabBar(
            isScrollable: true,
            labelPadding: EdgeInsets.zero,
            indicatorSize: TabBarIndicatorSize.label,
            tabs: [
              SizedBox(
                  width: MediaQuery.of(context).size.width * .1,
                  child: const Tab(
                    child: Icon(Icons.people),
                  )),
              SizedBox(
                  width: MediaQuery.of(context).size.width * .3,
                  child: const Tab(
                    child: Text('Chats'),
                  )),
              SizedBox(
                  width: MediaQuery.of(context).size.width * .3,
                  child: const Tab(
                    child: Text('Status'),
                  )),
              SizedBox(
                  width: MediaQuery.of(context).size.width * .3,
                  child: const Tab(
                    child: Text('Calls'),
                  ))
            ],
          ),
        ),
        body: TabBarView(children: [chats_screen()]),
        floatingActionButton: const CircleAvatar(
          radius: 30,
          child: Icon(
            Icons.message,
            color: Colors.white,
          ),
          backgroundColor: Colors.teal,
        ),
      ),
    );
  }
}
