import 'package:flutter/material.dart';

import 'screens/home_page.dart';

void main() {
  runApp(const learningApp());
}

class learningApp extends StatelessWidget {
  const learningApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.orangeAccent,
        appBar: AppBar(
        title:Text('Toku'),
        backgroundColor: Colors.orangeAccent,),
        body: HomePage() ,
      ),
    );

  }
}

