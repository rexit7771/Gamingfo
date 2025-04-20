import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:gamingfo_app/app/constants/color_const.dart';
import 'package:gamingfo_app/app/constants/gif_const.dart';
import 'package:gamingfo_app/app/constants/image_const.dart';
import 'package:gamingfo_app/app/custom/buttons/primary_button.dart';
import 'package:gamingfo_app/app/custom/buttons/secondary_button.dart';
import 'package:gamingfo_app/app/routes/app_pages.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      // appBar: AppBar(title: const Text('Gamingfo'), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30, top: 50),
        child: Column(
          children: [
            Text(
              "Gamingfo",
              style: GoogleFonts.oswald(
                fontSize: 40,
                color: ColorConst.primaryColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 50),
            Center(child: Image.asset(GifConst.gameGif)),
            SizedBox(height: 20),
            Text(
              "Gaming ? ask away!",
              style: GoogleFonts.oswald(
                fontSize: 30,
                color: ColorConst.primaryColor,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 50),
            PrimaryButton(text: "Login", navigateTo: Routes.LOGIN),
            SizedBox(height: 20),
            SecondaryButton(text: "Register", navigateTo: Routes.REGISTER),
          ],
        ),
      ),
    );
  }
}
