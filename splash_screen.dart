import 'dart:async';
import 'package:flutter/material.dart';
import 'package:splash_screens/screens/welcome_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => WelcomeScreen(),
          ));
    });

    return Scaffold(
      backgroundColor: const Color(0xffFE724C),
      body: Padding(
        padding: const EdgeInsets.only(top: 200),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * .15,
                      width: MediaQuery.of(context).size.width * .35,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8)),
                      child: Image.network("images/Group 18084.png"),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .01,
                    ),
                    RichText(
                        text: const TextSpan(children: [
                      TextSpan(
                          text: "Food",
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w700,
                              color: Colors.white)),
                      TextSpan(
                          text: " Hub",
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w700,
                              color: Color(0xffFFC7B7)))
                    ])),
                  ]),
              const Expanded(child: SizedBox(height: double.infinity)),
              SizedBox(
                width: MediaQuery.of(context).size.height * .2,
                child: LinearProgressIndicator(
                  backgroundColor: const Color(0xffFE724C),
                  borderRadius: BorderRadius.circular(6),
                  color: Colors.white,
                  minHeight: 2,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .1,
              )
            ],
          ),
        ),
      ),
    );
  }
}
