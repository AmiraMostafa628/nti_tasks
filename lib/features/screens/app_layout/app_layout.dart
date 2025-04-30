import 'package:flutter/material.dart';
import 'package:nti_tasks/features/screens/task1/task1.dart';
import 'package:nti_tasks/features/screens/task2/task2.dart';
import 'package:nti_tasks/features/screens/task3/task3.dart';
import 'package:nti_tasks/features/screens/task4/task4.dart';
import 'package:nti_tasks/features/screens/task5/task5.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Task3(),
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white
      ),
    );
  }
}
