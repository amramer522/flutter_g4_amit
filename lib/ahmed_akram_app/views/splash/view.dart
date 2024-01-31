import 'dart:async';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_g4_amit/core/logic/helper_methods.dart';
import 'package:flutter_g4_amit/views/login2/view.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    print("initState");
    Timer(
      Duration(seconds: 3),
      () {
        navigateTo(Login2View());
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    print("build");
    return Scaffold(
      backgroundColor: Color(0xff00147C),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ShakeY(
              child: Image.asset(
                "assets/images/suit.png",
                width: 130,
                height: 140,
              ),
            ),
            SizedBox(
              height: 13,
            ),
            SpinPerfect(
              child: Text(
                "أحمد & أكرم",
                style: TextStyle(fontSize: 38, fontFamily: "Swanky", color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
