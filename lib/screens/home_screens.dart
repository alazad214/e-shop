import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("E-shop"),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
    );
  }
}
