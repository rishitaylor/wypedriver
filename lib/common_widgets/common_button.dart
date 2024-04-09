import 'package:flutter/material.dart';
import 'package:wypedriver/apps/utils/utils.dart';

class CommonButton extends StatelessWidget {
  String text;
  Function onTap;
  CommonButton({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            elevation: 5, shadowColor: myColor().black),
        onPressed: () => onTap,
        child: Text(
          text,
          style:
              FontStyle.regular.copyWith(fontSize: 12, color: myColor().black),
        ));
  }
}
