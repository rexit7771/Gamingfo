import 'package:dio/dio.dart';
import 'package:gamingfo_app/app/modules/games/model/game_model.dart';

class GameService {
  Dio dio = Dio();
  static const url = "https://www.cheapshark.com/api/1.0/deals";

  Future<List<GameModel>> fetchAllGames() async {
    try {
      final response = await dio.get(url);
      if (response.statusCode == 200) {
        final data = response.data;
        List<GameModel> games = List.from(
          data.map((game) => GameModel.fromJson(game)),
        );
        return games;
      }
      throw ("Data Not Found");
    } catch (e) {
      print(e);
      rethrow;
    }
  }

  Future<GameModel> fetchGame(id) async {
    try {
      final response = await dio.get("$url?id:$id");
      if (response.statusCode != 200) throw ("Data Not Found");

      return GameModel.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }
}
