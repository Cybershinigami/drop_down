import 'package:flutter/material.dart';
import 'package:todo_app/features/personalization/pages/splash_screen.dart';
import 'package:todo_app/features/personalization/pages/to_do_page.dart';
import 'package:todo_app/features/personalization/pages/welcome_screen.dart';

void main(){
  runApp(const ToDoApp());
}
class ToDoApp extends StatelessWidget {
  const ToDoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Scheduler',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
    );
  }
}