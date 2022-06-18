import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: SingleChildScrollView(
            child: Stack(
              children: [
                SizedBox(
                  width: double.infinity,
                  // height: double.infinity,
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "LOGIN",
                        style: TextStyle(fontSize: 18, fontFamily: "myfont",fontWeight: FontWeight.bold),
                      ),

                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 20.0),
                        child: SvgPicture.asset(
                          "assets/icons/login.svg",
                          // width: 288
                        ),
                      ),
                      // const SizedBox(
                      //   height: 35,
                      // ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.purple[100],
                          borderRadius: BorderRadius.circular(66),
                        ),
                        margin: const EdgeInsets.symmetric(
                          vertical: 10.0,
                          horizontal: 32.0,
                        ),
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          cursorColor: Colors.purple,
                          style: const TextStyle(color: Colors.purple),
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Icon(
                              Icons.person,
                              color: Colors.purple,
                            ),
                            hintText: "Email Address",
                            hintStyle: TextStyle(color: Colors.purple),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.purple[100],
                          borderRadius: BorderRadius.circular(66),
                        ),
                        margin: const EdgeInsets.symmetric(
                          vertical: 10.0,
                          horizontal: 32.0,
                        ),
                        child: TextFormField(
                          keyboardType: TextInputType.visiblePassword,
                          cursorColor: Colors.purple,
                          style: const TextStyle(color: Colors.purple),
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Icon(
                              Icons.lock,
                              color: Colors.purple,
                            ),
                            hintText: "Password",
                            hintStyle: TextStyle(color: Colors.purple),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, "signup");
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.purple),
                          padding: MaterialStateProperty.all(
                            const EdgeInsets.symmetric(
                                horizontal: 106, vertical: 10),
                          ),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(27),
                            ),
                          ),
                        ),
                        child: const Text(
                          "LOGIN",
                          style: TextStyle(fontSize: 24),
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Don't have an accout? "),
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, "signup");
                            },
                            child: const Text(
                              " Sign up",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 50.0,
                      )
                    ],
                  ),
                ),
                Positioned(
                  height: 100.0,
                  left: 0,
                  child: Image.asset("assets/images/main_top.png"),
                ),
                Positioned(
                  right: 0,
                  height: 100.0,
                  bottom: 0,
                  // top: 0,
                  child: Image.asset("assets/images/login_bottom.png"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
