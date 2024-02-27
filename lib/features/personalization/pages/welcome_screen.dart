import 'package:flutter/material.dart';
import 'package:todo_app/features/personalization/pages/to_do_page.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height/1.6,
       decoration: const BoxDecoration(
         color: Colors.teal,
       ),
        child: Stack(
          children: [ 
            Stack(
              children: [ 
                Container(
                  width:MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height/1.6,
                  decoration: const BoxDecoration(
                     color: Colors.amber,
                     borderRadius: BorderRadius.only(bottomRight: Radius.circular(60)),
                  ),
                  child: Center(
                    child: Image.asset(
                      'logo.png',
                      scale: 0.8,
                      ),
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width:MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/2.66,
                padding: const EdgeInsets.only(top: 40, bottom: 30),
                decoration: const BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(70),
                  ),
                ),
                child: Column(
                  children: [ 
                    const Text(
                      'Scheduling your everyday to success.',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1,
                        wordSpacing: 1,
                      ),
                      ),
                      const SizedBox(height: 15),
                      Padding(padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: Text(
                        'In the Path of success, every minute matters; what\'s more ! Scheduling and organizing everyday undoubtedly leads to success.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black.withOpacity(0.6),
                        ),
                        ),
                      ),
                      const SizedBox(height: 60),
                      Material(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(10),
                        child: InkWell(
                          onTap: (){
                            Navigator.push(
                              context,
                               MaterialPageRoute(
                                builder: (context) => const ToDoScreen(),
                                ),
                                );
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              vertical: 15,
                              horizontal: 80,
                            ),
                            child: const Text(
                              'Let\'s schedule !',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1,
                              ),
                              ),
                          ),
                        ),
                      )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}