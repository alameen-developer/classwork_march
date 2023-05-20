import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context)=>MaterialApp(
      home: GridView_UI1(),
      debugShowCheckedModeBanner: false,
      useInheritedMediaQuery: true,
    ),
  ));
}

class GridView_UI1 extends StatelessWidget {
  GridView_UI1({Key? key}) : super(key: key);

  var Gridicons = [
    Icons.home,
    Icons.network_check,
    Icons.account_box,
    Icons.balance,
    Icons.camera_alt,
    Icons.dangerous_outlined,
    Icons.home,
    Icons.network_check,
    Icons.account_box,
    Icons.balance,
    Icons.camera_alt,
    Icons.dangerous_outlined,
  ];
  var Gridcolors = [
    Colors.lightGreen,
    Colors.amber,
    Colors.pink,
    Colors.cyanAccent,
    Colors.deepPurpleAccent,
    Colors.green,
    Colors.orange,
    Colors.amber,
    Colors.pink,
    Colors.cyanAccent,
    Colors.deepPurpleAccent,
    Colors.green,
    Colors.white,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 25,
            crossAxisSpacing: 25,
            mainAxisExtent: 100,
          ),
          itemBuilder: (ctx, index) {
            return Container(
              // color: Gridcolors[index],
              decoration: BoxDecoration(
                color: Gridcolors[index],
                borderRadius: BorderRadius.circular(20),
                // boxShadow: [
                //   BoxShadow(
                //     color: Colors.grey,
                //     blurRadius: 5,
                //     spreadRadius: 5,
                //       offset: Offset(2, 8)
                //   )
                // ],
              ),
              child: Center(
                child: ListTile(
                  leading: Icon(
                    Gridicons[index],
                    size: 50,
                  ),
                  title: const Text('Heart'),
                  subtitle: const Text(
                    'Shaker',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            );
          },
          // shrinkWrap: true,
          itemCount: 12,
        ),
      ),
    );
  }
}
