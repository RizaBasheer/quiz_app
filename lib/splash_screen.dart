import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quiz_app/question.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => Questions()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              'https://t3.ftcdn.net/jpg/05/69/96/48/360_F_569964847_Wa3tNpPYRGABpplPGSFT3LLB7E2wU0jb.jpg',
              width: 500,
              height: 700,
            ),
          ],
        ),
      ),
    );
  }
}
