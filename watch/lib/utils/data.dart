class Game {

  String title;
  String subTitle;
  String description;
  String imageUrl;
  String users;
  String viewers;

  Game(this.title, this.subTitle, this.description, this.imageUrl, this.users, this.viewers);

}

List<Game> getGames(){
  return <Game>[
    Game(
      "Counter-Strike: Global Offensive",
      "ESL_CSGO",
      "Final oyunu Harita 1'de devam ediyor",
      "assets/images/csgo.jpg",
      "16890",
      "101.646"
    ),
    Game(
      "Call Of Duty: Warzone",
      "COD_WARZONE",
      "Oyun heycanı harita 3 de devam ediyor",
      "assets/images/cod.jpg",
      "95433",
      "186.255"
    ),
    Game(
      "FIFA 20",
      "EA_SPORTS",
      "Eleme turları ve yarı finaller - Avrupa",
      "assets/images/fifa.jpg",
      "34521",
      "68.255"
    ),
  ];
}