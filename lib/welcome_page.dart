import 'package:firebase_getx_app/auth_controller.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  String email;
  WelcomePage({super.key,required this.email});

  @override
  Widget build(BuildContext context) {
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
          const SizedBox(height: 70,),
          Container(
            width: w,
            margin: const EdgeInsets.only(left: 20),
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Welcome',style: TextStyle(fontSize: 36,fontWeight: FontWeight.bold),),
                Text(email,style: TextStyle(fontSize: 18,color: Colors.black),),
              ],
            ),
          ),
          const SizedBox(height: 200,),
          GestureDetector(
            onTap: (){
              AuthController.instance.logOut();
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
                    'Sign out',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 36,
                        fontWeight: FontWeight.bold),
                  )),
            ),
          ),
   ] ),
        )
    );
  }
}
