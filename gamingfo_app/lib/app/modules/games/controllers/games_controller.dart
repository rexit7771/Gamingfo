import 'package:gamingfo_app/app/modules/games/model/game_model.dart';
import 'package:gamingfo_app/app/modules/games/services/game_service.dart';
import 'package:get/get.dart';

class GamesController extends GetxController {
  //TODO: Implement GamesController
  List<GameModel> games = [];
  GameModel? game;

  @override
  void onInit() {
    super.onInit();
    getGames();
  }

  void getGames() async {
    try {
      games = await GameService().fetchAllGames();
      update();
    } catch (e) {
      print("Error fetching games: $e");
    }
  }
}
