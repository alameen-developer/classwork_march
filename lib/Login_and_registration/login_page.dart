import 'package:flutter/material.dart';

class LoginPage11 extends StatelessWidget {
  const LoginPage11({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.only(bottom: 25),
            child: Text(
              'Login',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
          ),
          const Text(
            'Welcome back! Login with your credentials',
            style: TextStyle(color: Colors.grey),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                prefixIcon: Icon(
                  Icons.account_box_sharp,
                  color: Colors.grey,
                ),
                hintText: 'Email ID',
                labelText: 'Email ID',
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(
                    Icons.visibility_off,
                    color: Colors.grey,
                  ),
                  hintText: 'Password',
                  suffixIcon: Icon(
                    Icons.visibility_off,
                    color: Colors.grey,
                  )),
            ),
          ),
          Container(
            width: double.infinity,
            height: 40,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('Login'),
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30))),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              'Do you have an account? Sign Up',
              style: TextStyle(color: Colors.grey),
            ),
          )
        ],
      ),
    );
  }
}
