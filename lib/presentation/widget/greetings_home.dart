// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HomeGreetings extends StatelessWidget {
  const HomeGreetings({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,

            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Text("Hi Rony,", style: TextStyle(fontSize: 20)),
              const Text("Welcome Back",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  )),
            ]),
        ClipRRect(
          borderRadius: BorderRadius.circular(15.0),
          child: Image(
            image: AssetImage("assets/images/user.png"),
            height: 46.0,
            width: 46,
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}
