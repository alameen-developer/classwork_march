import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: const LoginandRegistration(),
    theme: ThemeData(primarySwatch: Colors.green),
  ));
}

class LoginandRegistration extends StatelessWidget {
  const LoginandRegistration({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 90, bottom: 20),
              child: Text(
                'Hello There!',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                ),
              ),
            ),
            const Text(
              'Automatic identity verification which enable you to verify your identity',
              style: TextStyle(color: Colors.grey),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 60,
                bottom: 10
              ),
              child: Image.network(
                'https://cdn.pixabay.com/photo/2016/04/26/07/57/woman-1353825_960_720.png',
                scale: 4,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 80,
                bottom: 20,
              ),
              child: ElevatedButton(
                onPressed: () {
                },
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(250,40),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                  // backgroundColor: Colors.green,
                ),
                child: const Text('Login'),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(250,40),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                  // backgroundColor: Colors.green,
              ),
              child: const Text('Sign Up'),
            ),
          ],
        ),
      ),
    );
  }
}
