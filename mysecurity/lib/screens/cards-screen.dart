import 'package:flutter/material.dart';
import 'package:mysecurity/screens/main-screen.dart';

import 'card-component.dart';

// ignore: camel_case_types
class CardsScreen extends StatelessWidget {
  const CardsScreen({super.key});

  get image => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(235, 246, 246, 246),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(0.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 35),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            minimumSize: Size(50, 30),
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            alignment: Alignment.centerLeft),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return MainScreen();
                          }));
                          //Done
                        },
                        child: Text(
                          'Done',
                          style:
                              TextStyle(color: Color(0xFF643278), fontSize: 17),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          //ID Card Services
                        },
                        child: Text(
                          'ID Card Services',
                          style:
                              TextStyle(color: Color(0xFF643278), fontSize: 17),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                CardComponent(),
                CardComponent(),
                CardComponent(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
