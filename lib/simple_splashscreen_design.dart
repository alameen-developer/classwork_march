import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) => const MaterialApp(
      home: simple_splashscreen(),
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
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
          gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [Colors.orange, Colors.pink, Colors.purple],
      )),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              'https://cdn-icons-png.flaticon.com/256/9846/9846996.png',
              width: 150,
              height: 150,
            ),
            RichText(
              text: TextSpan(
                  text: 'Tivi',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.white,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'dey',
                      style: GoogleFonts.amaranth(fontWeight: FontWeight.normal,color: Colors.cyan),

                      // TextStyle(
                      //   fontFamily: 'DancingScript',
                      //   fontWeight: FontWeight.normal,
                      // ),
                    )
                  ]),
            )
          ],
        ),
      ),
    ));
  }
}
