import 'package:e_shop/auth/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/custom_button.dart';
import '../widgets/custom_textfield.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white70,
      body: SafeArea(
        child: Container(
            alignment: Alignment.center,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.black,
                  Colors.black,
                  Colors.blue.withOpacity(0.9),
                  Colors.blue,
                ],
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Register",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                const Text(
                  "Please enter the details below to continue!",
                  style: TextStyle(color: Colors.grey, fontSize: 14),
                ),
                Container(
                  height: h / 1.8,
                  width: double.infinity,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  margin:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  decoration: BoxDecoration(
                      color: Colors.transparent.withOpacity(0.3),
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const CustomTextfield(
                        hinttext: "Enter your email",
                      ),
                      const CustomTextfield(
                        hinttext: "Enter your password",
                        issecured: true,
                        icon: Icon(Icons.remove_red_eye),
                      ),
                      const CustomTextfield(
                        hinttext: "Confirm your password",
                        issecured: true,
                        icon: Icon(Icons.remove_red_eye),
                      ),
                      const Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "Forget password?",
                          style: TextStyle(color: Colors.amberAccent),
                        ),
                      ),
                      CustomButton(
                        text: "Sign Up",
                      )
                    ],
                  ),
                ),
                 Row(
                   crossAxisAlignment: CrossAxisAlignment.center,
                   mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Already have an account? "),
                    InkWell(
                      onTap: (){
                        Get.off(()=>const Login());
                      },
                      child: const Text("Log in",  style: TextStyle(
                          color: Colors.amberAccent,
                          fontWeight: FontWeight.w600,
                          fontSize: 16
                      )),
                    ),

                  ],
                )

              ],
            )),
      ),
    );
  }
}
