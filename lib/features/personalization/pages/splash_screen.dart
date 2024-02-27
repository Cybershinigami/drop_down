import 'dart:async';

import 'package:flutter/material.dart';
import 'package:todo_app/features/personalization/pages/to_do_page.dart';
import 'package:todo_app/main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), ()=> Navigator.push(
      context,
       MaterialPageRoute(builder: (_) => const ToDoScreen())));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[ 
          Container(
            decoration: const BoxDecoration(color: Colors.white),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[ 
                Expanded(
                  flex: 3,
                  child: Container(
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [ 
                        CircleAvatar(
                          backgroundColor: Colors.teal,
                          child: Icon(
                            Icons.check,
                            color: Color(0xFF18D235),
                            size: 60,
                            ), 
                        ),
                        Padding(padding: EdgeInsets.only(top: 20)),
                        Text(
                          "Scheduler",
                          style: TextStyle(
                            color: Colors.redAccent,
                            fontSize: 20,
                          ),
                          ),
                      ],
                    ),
                  ),
                  ),
                  const Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[ 
                        CircularProgressIndicator(
                          backgroundColor: Colors.blue,
                          ),
                          Padding(padding: EdgeInsets.only(top:20)),
                          Text(
                            'Shogun Tech',
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 18,
                            ),
                            ),
                            Padding(padding: EdgeInsets.only(bottom: 60)),
                      ],
                    ),
                    ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
