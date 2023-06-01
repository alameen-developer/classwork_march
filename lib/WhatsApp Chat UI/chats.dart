import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      home: chats_screen(),
      debugShowCheckedModeBanner: false,
      useInheritedMediaQuery: true,
      theme: ThemeData(primarySwatch: Colors.teal),
    ),
  ));
}

class chats_screen extends StatelessWidget {
  chats_screen({Key? key}) : super(key: key);

  var dps = [
    'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80',
    'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80',
    'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80',
    'https://images.unsplash.com/photo-1508214751196-bcfd4ca60f91?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80',
    'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80',
    'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80',
    'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80',
    'https://images.unsplash.com/photo-1508214751196-bcfd4ca60f91?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80',
    'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80',
    'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80',
  ];
  var names = [
    'Ameen',
    'Kavya',
    'Kripa',
    'Kurian',
    'keerthi',
    'Ameen',
    'Kavya',
    'Kasim',
    'Kripa',
    'keerthi'
  ];
  var messages = [
    'hi',
    'hello',
    'how are you?',
    'ok',
    'bye',
    'hi',
    'hello',
    'how are you?',
    'ok',
    'bye'
  ];
  var time = [
    '02:34',
    '12:34',
    'yesterday',
    'yesterday',
    '12:34',
    '5:05',
    '02:34',
    '12:34',
    '5:05',
    '07:00'
  ];

  var subicons = [
    const Icon(
      Icons.done_all,
      color: Colors.green,
      size: 17,
    ),
    const Icon(
      Icons.done,
      size: 17,
    ),
    const Icon(
      Icons.phone_missed,
      color: Colors.red,
      size: 17,
    ),
    const Icon(
      Icons.image,
      size: 17,
    ),
    const Icon(
      Icons.block,
      size: 17,
    ),
    const Icon(
      Icons.done_all,
      color: Colors.green,
      size: 17,
    ),
    const Icon(
      Icons.done,
      size: 17,
    ),
    const Icon(
      Icons.phone_missed,
      color: Colors.red,
      size: 17,
    ),
    const Icon(
      Icons.image,
      size: 17,
    ),
    const Icon(
      Icons.block,
      size: 17,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return ListTile(
            leading: SizedBox(
              width: 60,
              height: 60,
              child: CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(dps[index]),
              ),
            ),
            title: Text(
              names[index],
              style: const TextStyle(fontSize: 18),
            ),
            subtitle: Wrap(children: [
              subicons[index],
              SizedBox(
                width: 10,
              ),
              Text(
                messages[index],
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 17),
              )
            ]),
            trailing: Text(time[index]),
            dense: false,
            contentPadding:
                const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          );
        },
        itemCount: 10,
      ),
    );
  }
}
