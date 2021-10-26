class PostModel {
  String title;
  String subTitle;
  String? profilePhoto;
  String? context;
  String? image;

  PostModel(
      {required this.title,
      required this.subTitle,
      this.profilePhoto,
      this.context,
      this.image});
}

List<PostModel> listOfPost = [
  PostModel(
      title: "Nasa",
      subTitle: "Ay",
      profilePhoto: "assets/images/post_images/nasa_pp.png",
      image: "assets/images/post_images/post_image0.jpeg"),
  PostModel(
    title: "İsmet",
    subTitle: "Boğaz",
    profilePhoto: "assets/profiles/pp_ismet.jpg",
    context:
        "Alacak nefesimiz olduğu sürece, soracak hesabımızda olacaktır elbet bir gün.",
  ),
  PostModel(
      title: "Büyük Ev",
      subTitle: "Orta Bahçe",
      profilePhoto: "assets/images/post_images/post_image3.jpeg",
      image: "assets/images/post_images/post_image3.jpeg",
      context: "Bugüne özel kahve indirimleriii"),
  PostModel(
      title: "YTU",
      subTitle: "Taş Bina",
      profilePhoto: "assets/images/post_images/ytu_pp.png",
      image: "assets/images/post_images/post_image2.jpeg"),
];
