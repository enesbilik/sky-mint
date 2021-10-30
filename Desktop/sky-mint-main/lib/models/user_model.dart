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
  MyUser(
      "Umut Güzel", "#KulüpleriyleLiderYTU", "pp_umut.jpg", "13:47", 0, true),
  MyUser("İsmet Güngör", "Projeye Start'ı veriyoruz 🔥🔥", "pp_ismet.jpg",
      "20:23", 0, true),
  MyUser("Bilgi İşlem", "Usis'i tarihe gömdük 👌", "pp_bidb_siyah.png", "23:12",
      4, false),
  MyUser("M. Amaç Güvensan", "Pazartesi ofisinizde görüşmek üzere",
      "pp_mag.jpg", "19:25", 2, false),
];
