import 'package:flutter/material.dart';

// ignore: camel_case_types
class CardComponent extends StatelessWidget {
  const CardComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 25, left: 35, right: 35),
      width: double.infinity,
      height: 700,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(255, 0, 0, 0),
            blurRadius: 20.0, // Soften the shaodw
            spreadRadius: -10.0,
            offset: Offset(0.0, 0.0),
          )
        ],
      ),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Column(children: [
          Container(
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset(
                  'images/Saudi-Aramco-logo.png',
                  width: 130,
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
