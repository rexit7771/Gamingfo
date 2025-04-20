import 'package:flutter/material.dart';
import 'package:gamingfo_app/app/constants/color_const.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.hintText,
    this.hintColor,
    this.borderColor,
    this.borderWidth,
    this.hintSize,
    this.hideText = false,
    this.rightIcon,
    this.rightIconColor,
  });

  final String? hintText;
  final Color? hintColor;
  final double? hintSize;
  final Color? borderColor;
  final double? borderWidth;
  final bool hideText;
  final Icon? rightIcon;
  final Color? rightIconColor;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: hideText,
      decoration: InputDecoration(
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: borderColor ?? ColorConst.secondaryColor,
            width: borderWidth ?? 2.5,
          ),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: borderColor ?? ColorConst.primaryColor,
            width: borderWidth ?? 2.5,
          ),
        ),
        hintText: hintText ?? 'Hint',
        hintStyle: TextStyle(
          color: hintColor ?? ColorConst.primaryColor,
          fontSize: hintSize ?? 20,
        ),
        suffixIcon: rightIcon,
        suffixIconColor: rightIconColor ?? ColorConst.primaryColor,
      ),
    );
  }
}
