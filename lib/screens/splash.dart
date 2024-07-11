import 'package:e_shop/utils/appConfig.dart';
import 'package:e_shop/utils/colors.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          Appconfig.appName,
          style: TextStyle(
              color: AppColor.blueC, fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
