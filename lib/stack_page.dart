import 'package:flutter/material.dart';

void main(){
runApp(const MaterialApp(home: Stack_Page(),));
}

class Stack_Page extends StatelessWidget {
  const Stack_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.purple[900],),
      //#331161
      body: ListView.separated(itemBuilder: itemBuilder, separatorBuilder: separatorBuilder, itemCount: itemCount),
    );
  }
}
