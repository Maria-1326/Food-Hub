import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
        image: NetworkImage("images/Welcome.png"),
        fit: BoxFit.cover,
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Stack(clipBehavior: Clip.none, children: [
            Positioned(
              top: 20,
              right: 5,
              child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    "Skip",
                    style: TextStyle(color: Color(0xffff642f)),
                  )),
            ),
            const Positioned(
              top: 80,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome to",
                    style: TextStyle(fontSize: 50, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "Food Hub",
                    style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.w700,
                        color: Color(0xffFE724C)),
                  ),
                  SizedBox(
                    width: 300,
                    child: Text(
                      "Your favourite foods delivered fast at your door.",
                      style: TextStyle(fontSize: 20),
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              bottom: 10,
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 1,
                        width: 80,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(2)),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        "Sign in with",
                        style: TextStyle(color: Colors.white),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 1,
                        width: 80,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(2)),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        height: 50,
                        child: ElevatedButton(
                            onPressed: () {},
                            child: Row(
                              children: [
                                Image.network("images/Facebook.png"),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Text(
                                  "FACEBOOK",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.black),
                                ),
                              ],
                            )),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      SizedBox(
                        height: 50,
                        child: ElevatedButton(
                            onPressed: () {},
                            child: Row(
                              //  mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Image.network("images/Gogle.png"),
                                const SizedBox(
                                  width: 20,
                                ),
                                const Text(
                                  "GOOGLE",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.black),
                                )
                              ],
                            )),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 60,
                    child: OutlinedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0x0fffffff)),
                        onPressed: () {},
                        child: const Text(
                          "Start with email or phone",
                          style: TextStyle(fontSize: 25, color: Colors.white),
                        )),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  RichText(
                      text: const TextSpan(children: [
                    TextSpan(
                        text: "Already have an account? ",
                        style: TextStyle(color: Colors.white)),
                    TextSpan(
                        text: "Sign In",
                        style: TextStyle(
                            color: Colors.white,
                            decoration: TextDecoration.underline))
                  ])),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
