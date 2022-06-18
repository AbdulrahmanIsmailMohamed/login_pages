import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Stack(
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 40),
                    const Text(
                      "WELCOME TO EDU",
                      style: TextStyle(fontFamily: "myfonts",fontWeight: FontWeight.bold),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: SvgPicture.asset("assets/icons/chat.svg"),
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          Colors.purple,
                        ),
                        padding: MaterialStateProperty.all(
                          const EdgeInsets.symmetric(
                            horizontal: 79,
                            vertical: 10.0,
                          ),
                        ),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(27),
                          ),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, "login");
                      },
                      child: const Text("LOGIN"),
                    ),
                    const SizedBox(height: 10),
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          Colors.purple[200],
                        ),
                        padding: MaterialStateProperty.all(
                          const EdgeInsets.symmetric(
                            horizontal: 79,
                            vertical: 10.0,
                          ),
                        ),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(27),
                          ),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, "signup");
                      },
                      child: const Text("SIGNUP"),
                    )
                  ],
                ),
              ),
              Positioned(
                top: 0.0,
                left: 0.0,
                height: 130.0,
                child: Image.asset("assets/images/main_top.png"),
              ),
              Positioned(
                bottom: 0.0,
                left: 0.0,
                height: 100.0,
                child: Image.asset("assets/images/main_bottom.png"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
