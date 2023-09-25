import 'package:firebase_getx_app/auth_controller.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController=TextEditingController();
    TextEditingController passwordController=TextEditingController();
    double w = MediaQuery
        .of(context)
        .size
        .width;
    double h = MediaQuery
        .of(context)
        .size
        .height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: w,
              height: h * 0.3,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('img/signup.png'), fit: BoxFit.cover)),
              child: Column(
                children: [
                  SizedBox(
                    height: h * 0.16,
                  ),
                  const CircleAvatar(
                    radius: 58,
                    backgroundImage: AssetImage('img/prof.png'),
                  )
                ],
              ),
            ),
            Container(
              width: w,
              margin: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 80,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 10,
                              spreadRadius: 7,
                              offset: const Offset(1, 1),
                              color: Colors.grey.withOpacity(0.2))
                        ]),
                    child: TextField(
                      controller: emailController,
                      decoration: InputDecoration(
                          hintText: "Email",
                          prefixIcon: const Icon(
                            Icons.email,
                            color: Colors.deepOrange,
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: const BorderSide(
                                  color: Colors.white, width: 1.0)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: const BorderSide(
                                  color: Colors.white, width: 1.0)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30))),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 10,
                              spreadRadius: 7,
                              offset: const Offset(1, 1),
                              color: Colors.grey.withOpacity(0.2))
                        ]),
                    child: TextField(
                      controller: passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Password",

                          prefixIcon: const Icon(
                            Icons.password,
                            color: Colors.deepOrange,
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: const BorderSide(
                                  color: Colors.white, width: 1.0)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: const BorderSide(
                                  color: Colors.white, width: 1.0)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30))),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: (){
                AuthController.instance.register(emailController.text.trim(), passwordController.text.trim());
              },
              child: Container(
                width: w * 0.5,
                height: h * 0.08,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    image: const DecorationImage(
                        image: AssetImage('img/login.png'), fit: BoxFit.cover)),
                child: const Center(
                    child: Text(
                      'Sign up',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 36,
                          fontWeight: FontWeight.bold),
                    )),
              ),
            ),
            SizedBox(height: 12,),
            RichText(text: TextSpan(
              recognizer: TapGestureRecognizer()..onTap=()=>Get.back(),
              text: "Have an account?",
              style: TextStyle(fontSize: 20,
              color: Colors.grey[500]),
            )),
           const SizedBox(
              height: 80,
            ),
            RichText(
                text:
                const TextSpan(
                  text: "Sign up using this following methods",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                )
            ),
            const SizedBox(height: 20,),
            Wrap(
              spacing: 12,
              children: [
                InkWell(
                  onTap: () {
                    // handle button press
                  },
                  child: Container(
                    width: 56,
                    height: 56,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blue,
                    ),
                    child: const CircleAvatar(
                      radius:25,
                      backgroundImage: AssetImage('img/f.png'),
                  ),
                ),
            ),InkWell(
                  onTap: () {
                    // handle button press
                  },
                  child: Container(
                    width: 56,
                    height: 56,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blue,
                    ),
                    child: const CircleAvatar(
                      radius:25,
                      backgroundImage: AssetImage('img/t.png'),
                  ),
                ),
            ),InkWell(
                  onTap: () {
                    // handle button press
                  },
                  child: Container(
                    width: 56,
                    height: 56,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blue,
                    ),
                    child: const CircleAvatar(
                      radius:25,
                      backgroundImage: AssetImage('img/g.png'),
                  ),
                ),
            ),
              ])
          ]
        ),
      ),
    );
  }
}
