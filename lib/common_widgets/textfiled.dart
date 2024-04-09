import 'package:flutter/material.dart';

class LoginFiled extends StatelessWidget {
  TextEditingController controller;
  String hintText;
  bool? isObsecure;
  LoginFiled(
      {super.key,
      required this.controller,
      required this.hintText,
      this.isObsecure});

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: isObsecure!,
      controller: controller,
      decoration: InputDecoration(
        hintStyle: TextStyle(color: Colors.grey[500]),
        hintText: hintText,
        border: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black12, width: 10),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
      ),
    );
  }
}
