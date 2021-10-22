class PostModel {
  String title;
  String subTitle;
  String? context;
  String? image;

  PostModel(
      {required this.title, required this.subTitle, this.context, this.image});
}

List<PostModel> listOfPost = [
  PostModel(
      title: "Nasa",
      subTitle: "Ay",
      image: "assets/images/post_images/post_image0.jpeg"),
  PostModel(
      title: "Büyük Ev",
      subTitle: "Orta Bahçe",
      image: "assets/images/post_images/post_image3.jpeg"),
  PostModel(
      title: "YTU",
      subTitle: "Taş Bina",
      image: "assets/images/post_images/post_image2.jpeg"),
];
