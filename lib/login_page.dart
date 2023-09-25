import 'package:firebase_getx_app/auth_controller.dart';
import 'package:firebase_getx_app/signup_page.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController login = TextEditingController();
  TextEditingController password = TextEditingController();


  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: w,
                height: h * 0.3,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('img/login.png'), fit: BoxFit.cover)),
              ),
              Container(
                width: w,
                margin: const EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Hello',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 70),
                    ),
                    Text(
                      'Sign into your account',
                      style: TextStyle(color: Colors.grey[500], fontSize: 20),
                    ),
                    const SizedBox(
                      height: 50,
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

                        decoration: InputDecoration(
                            hintText: "Email",
                            prefixIcon: const Icon(
                              Icons.email,
                              color: Colors.black,
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
                        controller: login,
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

                        decoration: InputDecoration(

                            hintText: "Password",
                            prefixIcon: const Icon(
                              Icons.password,
                              color: Colors.black,
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
                        controller: password,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Expanded(child: Container()),
                        const Text('Forget your password?')
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: (){
                  AuthController.instance.login(login.text.trim(), password.text.trim());
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
                    'Sign In',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 36,
                        fontWeight: FontWeight.bold),
                  )),
                ),
              ),
              const SizedBox(
                height: 80,
              ),
              RichText(
                text: TextSpan(
                    text: "Don't have an account?",
                    style: TextStyle(color: Colors.grey[500], fontSize: 20),
                    children:  [
                      TextSpan(
                        text: "Create",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                        recognizer: TapGestureRecognizer()..onTap=()=>Get.to(()=>SignUpPage())
                      )
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
