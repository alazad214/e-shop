import 'package:e_shop/auth/login.dart';
import 'package:e_shop/auth/register.dart';
import 'package:e_shop/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/colors.dart';

class Onboading2 extends StatelessWidget {
  const Onboading2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/ecommerce2.png"),
                const SizedBox(height: 20,),
                const Text(
                  "WELCOME!!",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.amber),
                ),
                const Text(
                  "Welcome to our app. Get your tasks done easily using our services.",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, color: Colors.black87),
                ),
                const SizedBox(height: 30,),
                CustomButton(
                  text: "Log In",
                  ontap: (){
                    Get.to(()=> Login());
                  },
                ),
                const SizedBox(height: 20,),
                CustomButton(
                  text: "Register",
                  ontap: (){
                    Get.to(()=> Register());
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
