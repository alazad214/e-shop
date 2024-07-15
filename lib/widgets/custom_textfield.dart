import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  final String? hinttext;
  final icon;
  final bool? issecured;
  final onchanged;
  const CustomTextfield(
      {super.key, this.hinttext, this.icon, this.issecured, this.onchanged});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      alignment: Alignment.center,
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.5),
          borderRadius: BorderRadius.circular(10)),
      child: TextFormField(
        obscureText: issecured ?? false,
        onChanged: onchanged,
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hinttext,
            prefixIconColor: Colors.black87,
            prefixIcon: icon ??
                const Icon(
                  Icons.email,
                )),
      ),
    );
  }
}
