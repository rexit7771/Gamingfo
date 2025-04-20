import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:gamingfo_app/app/constants/color_const.dart';
import 'package:gamingfo_app/app/constants/gif_const.dart';
import 'package:gamingfo_app/app/custom/buttons/primary_button.dart';
import 'package:gamingfo_app/app/custom/textField/borderless_text_field.dart';
import 'package:gamingfo_app/app/modules/register/controllers/register_controller.dart';
import 'package:gamingfo_app/app/routes/app_pages.dart';

import 'package:get/get.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Register'), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30, top: 50),
        child: ListView(
          children: [
            Image.asset(GifConst.registerGif),
            SizedBox(height: 30),
            CustomTextField(
              hintText: "Email",
              rightIcon: Icon(Icons.alternate_email),
            ),
            SizedBox(height: 20),
            CustomTextField(
              hintText: "Password",
              hideText: true,
              rightIcon: Icon(Icons.remove_red_eye_outlined),
            ),
            SizedBox(height: 20),
            CustomTextField(
              hintText: "Confirmation Password",
              hideText: true,
              rightIcon: Icon(Icons.remove_red_eye_outlined),
            ),
            RichText(
              text: TextSpan(
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: ColorConst.secondaryColor,
                ),
                children: [
                  TextSpan(text: "Already have an account ? Just "),
                  TextSpan(
                    text: "Sign In",
                    style: TextStyle(color: ColorConst.primaryColor),
                    recognizer:
                        TapGestureRecognizer()
                          ..onTap = () {
                            Get.offNamed(Routes.LOGIN);
                          },
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            PrimaryButton(text: "Sign Up"),
          ],
        ),
      ),
    );
  }
}
