import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pushReplacementNamed(context, '/login');
            },
            child: Container(
              width: 250,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Color.fromARGB(246, 255, 255, 255),
              ),
              child: Center(
                  child: Text('Login',
                      style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 79, 49, 162)))),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacementNamed(context, '/signup');
            },
            child: Container(
              width: 250,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Color.fromARGB(246, 255, 255, 255),
              ),
              child: Center(
                  child: Text('Sign Up',
                      style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 79, 49, 162)))),
            ),
          ),
        ],
      )),
    );
  }
}
