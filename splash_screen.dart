import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/scr/common_widgets/images.dart';
import 'package:get_x/scr/features/authentication/screens/Login/welcome_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      Get.to(const WelcomeScreen());
    });
    return Scaffold(
      backgroundColor: const Color(0xffFE724C),
      body: Stack(alignment: Alignment.center, children: [
        Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Align(
            alignment: Alignment.center,
            child: Container(
                height: Get.height * .150,
                width: Get.width * .160,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(24)),
                child: Image.asset(Logo)),
          ),
          const SizedBox(
            height: 10,
          ),
          Image.asset(Font)
        ]),
        SizedBox(height: Get.height * .5),
        Positioned(
          bottom: 20,
          child: SizedBox(
            width: Get.width * .2,
            child: LinearProgressIndicator(
              backgroundColor: Colors.white,
              color: const Color(0xffFE724C),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
      ]),
    );
  }
}
