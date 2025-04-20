import 'package:flutter/material.dart';
import 'package:gamingfo_app/app/constants/font_const.dart';
import 'package:gamingfo_app/app/modules/games/model/game_model.dart';

class ImageBox extends StatelessWidget {
  const ImageBox({super.key, required this.game});
  final GameModel game;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(image: NetworkImage(game.thumb ?? "")),
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 30, top: 20),
            child: Column(
              children: [
                SizedBox(height: 100),
                Text(
                  game.title ?? "",
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    backgroundColor: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
