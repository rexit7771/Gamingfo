class GameModel {
  final String? internalName;
  final String? title;
  final String? metacriticLink;
  final String? dealId;
  final String? storeId;
  final String? gameId;
  final String? salePrice;
  final String? normalPrice;
  final String? isOnSale;
  final String? savings;
  final String? metacriticScore;
  final String? steamRatingText;
  final String? steamRatingPercent;
  final String? steamRatingCount;
  final String? steamAppId;
  final int? releaseDate;
  final int? lastChange;
  final String? dealRating;
  final String? thumb;

  GameModel({
    this.internalName,
    this.title,
    this.metacriticLink,
    this.dealId,
    this.storeId,
    this.gameId,
    this.salePrice,
    this.normalPrice,
    this.isOnSale,
    this.savings,
    this.metacriticScore,
    this.steamRatingText,
    this.steamRatingPercent,
    this.steamRatingCount,
    this.steamAppId,
    this.releaseDate,
    this.lastChange,
    this.dealRating,
    this.thumb,
  });

  factory GameModel.fromJson(Map<String, dynamic> json) => GameModel(
    internalName: json['internalName'],
    title: json['title'],
    metacriticLink: json['metacriticLink'],
    dealId: json['dealID'],
    storeId: json['storeID'],
    gameId: json['gameID'],
    salePrice: json['salePrice'],
    normalPrice: json['normalPrice'],
    isOnSale: json['isOnSale'],
    savings: json['savings'],
    metacriticScore: json['metacriticScore'],
    steamRatingText: json['steamRatingText'],
    steamRatingPercent: json['steamRatingPercent'],
    steamRatingCount: json['steamRatingCount'],
    steamAppId: json['steamAppID'],
    releaseDate: json['releaseDate'],
    lastChange: json['lastChange'],
    dealRating: json['dealRating'],
    thumb: json['thumb'],
  );
}
