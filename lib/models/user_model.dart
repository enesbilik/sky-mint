class MyUser {
  String name;
  String lastMessage;
  String profilePhoto;
  String lastMessageTime;
  int lastNumberOfMessage;
  bool isChecked;

  MyUser(this.name, this.lastMessage, this.profilePhoto, this.lastMessageTime,
      this.lastNumberOfMessage, this.isChecked);
}

var listOfUser = [
  MyUser("Umut", "Recebi ne zaman ekibe alıyoruz?", "pp_umut.jpg", "13:47", 2,
      false),
  MyUser("İsmet", "Benim borcu ne zaman verirsin", "pp_ismet.jpg", "20:23", 0,
      true),
  MyUser(
      "Samet", "knk sen gel kahven benden", "pp_samet.jpg", "23:12", 0, true),
  MyUser("Recep", "ekibe ne zaman giricem", "pp_recep.jpg", "19:25", 9, false),
];
