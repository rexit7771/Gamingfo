import 'package:flutter/material.dart';
import 'package:gamingfo_app/app/constants/color_const.dart';
import 'package:gamingfo_app/app/constants/font_const.dart';
import 'package:get/get.dart';

class SecondaryButton extends StatelessWidget {
  const SecondaryButton({
    super.key,
    this.text,
    this.textColor,
    this.borderRadius,
    this.height,
    this.borderColor,
    this.buttonColor,
    this.fontSize,
    this.function,
    this.navigateTo,
  });

  final String? text;
  final Color? textColor;
  final Color? buttonColor;
  final Color? borderColor;
  final double? borderRadius;
  final double? height;
  final double? fontSize;
  final dynamic function;
  final String? navigateTo;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: height ?? 40,
      child: ElevatedButton(
        onPressed: () {
          if (function != null) function!();
          if (navigateTo != null) {
            Get.toNamed(navigateTo!);
          }
        },
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 8),
            side: BorderSide(color: borderColor ?? ColorConst.primaryColor),
          ),
          backgroundColor: buttonColor ?? ColorConst.secondaryColor,
        ),
        child: Text(
          text ?? "Submit",
          style: FontConst.primaryFont(
            fontSize: fontSize ?? 20,
            color: textColor ?? ColorConst.primaryColor,
          ),
        ),
      ),
    );
  }
}
