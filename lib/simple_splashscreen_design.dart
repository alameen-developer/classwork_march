import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) =>const MaterialApp(
      home: simple_splashscreen(),
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false
      ,
    ),
  ));
}

class simple_splashscreen extends StatelessWidget {
  const simple_splashscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.purple, Colors.pink, Colors.orange],
        )),
        child: Center(child: Column(children: [Image.network('src')],),),
      ),
    );
  }
}
