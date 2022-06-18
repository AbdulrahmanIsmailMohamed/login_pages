import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
                        "SIGNUP",
                        style: TextStyle(fontSize: 18, fontFamily: "myfont",fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 10.0),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: SvgPicture.asset("assets/icons/signup.svg",
                            width: 230),
                      ),
                      // const SizedBox(
                      //   height: 35,
                      // ),
                      Container(
                        height: 35,
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
                              size: 20,
                            ),
                            hintText: "Email Address",
                            hintStyle:
                                TextStyle(color: Colors.purple, fontSize: 18),
                          ),
                        ),
                      ),
                      Container(
                        height: 35,
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
                              size: 20,
                            ),
                            hintText: "Password",
                            hintStyle: TextStyle(color: Colors.purple),
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, "login");
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.purple),
                          padding: MaterialStateProperty.all(
                            const EdgeInsets.symmetric(
                              horizontal: 98,
                            ),
                          ),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(27),
                            ),
                          ),
                        ),
                        child: const Text(
                          "SIGNUP",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Already have an accout? "),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: ((context) {
                                    return const SignUp();
                                  }),
                                ),
                              );
                            },
                            child: const Text(
                              " Sign in",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 40.0, vertical: 10),
                        child: Row(
                          children: [
                            Expanded(
                                child: Divider(
                              thickness: 0.6,
                              color: Colors.purple[900],
                            )),
                            Text(
                              " OR ",
                              style: TextStyle(
                                color: Colors.purple[900],
                              ),
                            ),
                            Expanded(
                                child: Divider(
                              thickness: 0.6,
                              color: Colors.purple[900],
                            )),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              padding: const EdgeInsets.all(13),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: Colors.purple, width: 1)),
                              child: SvgPicture.asset(
                                "assets/icons/facebook.svg",
                                color: Colors.purple[400],
                                height: 10,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 22,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              padding: const EdgeInsets.all(13),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: Colors.purple, width: 1)),
                              child: SvgPicture.asset(
                                "assets/icons/google-plus.svg",
                                color: Colors.purple[400],
                                height: 10,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 22,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              padding: const EdgeInsets.all(13),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: Colors.purple, width: 1)),
                              child: SvgPicture.asset(
                                "assets/icons/twitter.svg",
                                color: Colors.purple[400],
                                height: 10,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 50.0),
                    ],
                  ),
                ),
                Positioned(
                  height: 100.0,
                  left: 0,
                  child: Image.asset("assets/icons/signup_top.png"),
                ),
                Positioned(
                  left: 0,
                  height: 100.0,
                  bottom: 0,
                  // top: 0,
                  child: Image.asset("assets/images/main_bottom.png"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
