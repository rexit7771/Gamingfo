import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:gamingfo_app/app/constants/color_const.dart';
import 'package:gamingfo_app/app/custom/boxes/image_box.dart';
import 'package:gamingfo_app/app/custom/buttons/primary_button.dart';

import 'package:get/get.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

import '../controllers/games_controller.dart';

class GamesView extends GetView<GamesController> {
  const GamesView({super.key});

  @override
  Widget build(BuildContext context) {
    var gamesController = Get.put(GamesController());

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
          child: Column(
            children: [
              Row(
                children: [
                  Flexible(
                    flex: 3,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Any Spesific Game ?',
                        hintStyle: TextStyle(fontSize: 15),
                      ),
                    ),
                  ),
                  SizedBox(width: 8),
                  Flexible(
                    flex: 2,
                    child: PrimaryButton(text: "Search", height: 55),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Expanded(
                child: GetBuilder<GamesController>(
                  builder: (controller) {
                    if (gamesController.games.isEmpty) {
                      return LoadingAnimationWidget.progressiveDots(
                        color: ColorConst.primaryColor,
                        size: 100,
                      );
                    } else {
                      return ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: gamesController.games.length,
                        itemBuilder: (context, index) {
                          final game = gamesController.games[index];
                          return Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: ImageBox(
                              game: game, // Pass the current game object
                            ),
                          );
                        },
                      );
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
