import 'package:flutter/material.dart';
import 'package:task_app_60mm/Calendar/calendar.dart';
import 'package:task_app_60mm/Home/home.dart';
import 'package:task_app_60mm/New%20Task/task.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:
      Home()
      // Calendar()
      // NewTask()
    );
  }
}


