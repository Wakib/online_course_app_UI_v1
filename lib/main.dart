import 'package:flutter/material.dart';
import 'screen/home_screen.dart';

void main() {
  runApp(CourseApp());
}

class CourseApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Online Course App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
      //  home:
    );
  }
}
