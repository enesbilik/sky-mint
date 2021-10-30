import 'package:flutter/cupertino.dart';

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
    title: "Tamer Yılmaz",
    subTitle: "",
    profilePhoto: "assets/profiles/tamer.jpg",
    context:
        "Değerli öğrencilerim ve akademisyen arkadaşlarım, 2021-22 Akademik Yılımız, 4 Ekim’de başladı. Üniversitemize ve tüm yüksek öğretim camiasına hayırlı olmasını diliyorum.\n\n#EğitimdeLiderYTÜ",
  ),
  PostModel(
      title: "Tamer Yılmaz",
      subTitle: "Kulüpler Vadisi",
      profilePhoto: "assets/profiles/tamer.jpg",
      image: "assets/images/post_images/ty_post_image (5).png",
      context:
          "Kendimi sürekli kulüpler vadisinde buluyorum. Biraz da derslere mi girsem acaba?"),
  PostModel(
      title: "Eymen Alpat",
      subTitle: "",
      profilePhoto: "assets/images/post_images/eymen_pp.png",
      context:
          "Umarım bu toplantı sonunda 'Yapın Çocuklar' cevabını alır ve ~36000 yıldızlıya ulaşabiliriz.\n\n#KulüpleriyleLiderYTU\n#ArGedeLiderYTU\nSosyalMedyasıylaLiderYTU"),
  PostModel(
      title: "Büyük Ev",
      subTitle: "Büyük Ev",
      profilePhoto: "assets/images/post_images/post_image3.jpeg",
      image: "assets/images/post_images/post_image3.jpeg",
      context: "Bugüne özel kahve indirimleriii"),
  PostModel(
      title: "yildizedu",
      subTitle: "Elektrik-Elektronik Fakültesi",
      profilePhoto: "assets/images/post_images/ytu_pp.png",
      image: "assets/images/post_images/yildiz_post_image (1).jpg",
      context:
          "«Mobil Ortamlar için Gelişmiş Gruplama ve Bulut Tabanlı Arama Özelliğine Sahip Galeri Uygulaması» başlıklı patenti Türk Patent ve Marka Kurumu nezdinde tescillenen YTÜ Bilgisayar Mühendisliği Bölümü öğretim üyemiz Doç. Dr. M. Amaç Güvensan’ı tebrik ederiz!\n\nSezgisel ve analitik gruplandırma metodları ile kolay ve hızlı erişimi sağlayan projede görsel içerikler, bulut sunucuda çalışan makine öğrenmesi teknikleriyle taranıyor. Bu sayede istediğimiz fotoğraf, yüzlerce birikmiş görsel arasından hızlı ve pratik bir şekilde bulunabiliyor.\n\n#ARGEdeLiderYTÜ"),
  PostModel(
      title: "SKY LAB",
      subTitle: "",
      profilePhoto: "assets/images/post_images/skylab_pp.jpg",
      image: "assets/images/post_images/skylab_post_image (1).jpg",
      context:
          "Sky Lab Otonom Araç projesinde Ekibimize Katılmak İster misin? Mobil bir uygulamadan bulunduğun konuma çağırabileceğin, araç içerisinde sesli asistan ile yönetebileceğin bir aracın ar-ge sürecinde yer almak istersen formu doldurarak ekibimize başvurabilirsin"),
  PostModel(
      title: "Tamer Yılmaz",
      subTitle: "Kongre ve Kültür Merkezi",
      profilePhoto: "assets/profiles/tamer.jpg",
      image: "assets/images/post_images/ty_post_image (1).jpg",
      context:
          "Değerli Akademisyen arkadaşlarım, yarın 2021-22 akademik yılının açılış törenini yapacağız. Prof.Dr. Erhan Afyoncu’nun açılış dersini vereceği törene katılımınızı bekliyorum. 🗓 19 Ekim, 14:00 📍Davutpaşa Kongre ve Kültür Merkezi"),
  PostModel(
      title: "yildizedu",
      subTitle: "Yıldız Teknopark",
      profilePhoto: "assets/images/post_images/ytu_pp.png",
      image: "assets/images/post_images/yildiz_post_image (3).jpg",
      context:
          "Akademisyenlere özel hazırlanan ‘Yıldız Akademik Kuluçka Hızlandırma Programı’ başvuruları devam ediyor!\n\nTüm akademisyenler ve doktora öğrencileri programa başvurarak bilgi birikimlerini ticari iş modellerine dönüştürebilir.\n\nSon Başvuru: 29 Ekim\n\n#ARGEdeLiderYTÜ"),
  PostModel(
      title: "mint",
      subTitle: "Mimarlık Fakültesi",
      profilePhoto: "assets/images/post_images/mint_pp.png",
      image: "assets/images/post_images/mint_post_image (1).jpg",
      context:
          "İstanbul Milletvekili Sn. Osman BOYRAZ ve Rektörümüz Prof. Dr. Tamer YILMAZ ile Teknofestte finale kalan Insansız Hava Aracımız ve kulübümüzün gelecek dönemdeki projeleri hakkında görüştük. Değerli ziyaretleri için kendilerine teşekkür ederiz. @proftameryilmaz @yildizedu @osman_boyraz_"),
  PostModel(
      title: "Tamer Yılmaz",
      subTitle: "Kulüpler Vadisi",
      profilePhoto: "assets/profiles/tamer.jpg",
      image: "assets/images/post_images/ty_post_image (3).jpg",
      context:
          "Öğrenci kulüpleri YTÜ’nün en güçlü yönlerinden biridir. Kulüpler vadisi projesini özkaynak kullanmadan sponsorluk anlaşması ile gerçekleştirdik.\n#EğitimdeLiderYTÜ\n#SürdürülebilirKampüs"),
  PostModel(
      title: "yildizedu",
      subTitle: "Yıldız Teknik Üniversitesi",
      profilePhoto: "assets/images/post_images/ytu_pp.png",
      image: "assets/images/post_images/yildiz_post_image (7).jpg",
      context:
          "Rota oluşturuldu, istikametimiz YTÜ!💫\n\nHangi fakülte nerededir? Orta bahçeye nasıl gidilir? Kampüs ile ilgili bütün soruların cevabı ile karşınızdayız.\n\nGelin hep birlikte kampüslerimizi keşfedelim.🗺️"),
  PostModel(
      title: "mint",
      subTitle: "",
      profilePhoto: "assets/images/post_images/mint_pp.png",
      image: "assets/images/post_images/mint_post_image (2).jpg",
      context:
          "MİNT web sitesi açıldı! 🌐🌐🌐 \n\nKulüple ilgili detaylı bilgilere daha rahat ulaşabileceğiniz web sitemiz siz üyelerimiz için hazırlandı 🤩\n\nProfilimizdeki link üzerinden MİNT'in yeni web sitesine göz atmayı unutma! ✨"),
  PostModel(
      title: "yildizedu",
      subTitle: "Kulüpler Vadisi",
      profilePhoto: "assets/images/post_images/ytu_pp.png",
      image: "assets/images/post_images/yildiz_post_image (5).jpg",
      context:
          '"Sadece derse girerek üniversiteli olunmaz!" diyen öğrenci kulüplerimizin Kulüpler Vadisi yarın açılıyor! 💫\n\n🕖: 11.0\n\n📍Davutpaşa Kampüsü\n\n#KulüpleriyleLiderYTÜ'),
  PostModel(
      title: "SKY LAB",
      subTitle: "Orta Bahçe",
      profilePhoto: "assets/images/post_images/skylab_pp.png",
      image: "assets/images/post_images/skylab_post_image (2).jpg",
      context:
          "Bugün sonunda tüm hasretimizle birbirimize kavuştuk. Ortabahçenin çimlerinde bir güzel kahvemizi içip tanışıp kaynaştık. ♥️ Bu güzel etkinliğimizde bizi yalnız bırakmayıp kahveleri ile içimizi ısıtan @normalcoffees teşekkür ediyoruz.💫 Gelemeyenler ve gelmeyi düşünenleri bir sonraki buluşmaya bekliyoruz. 💫💫💫"),
  PostModel(
      title: "yildizedu",
      subTitle: "Kongre ve Kültür Merkezi",
      profilePhoto: "assets/images/post_images/ytu_pp.png",
      image: "assets/images/post_images/yildiz_post_image (6).jpg",
      context:
          "Rektörümüz Prof. Dr. Tamer Yılmaz’ın ‘İnovasyon ve Girişimcilik Semineri’ yarın YTÜ’de!\n\nTopluma fayda yaratmanın ışığında, inovasyon ve girişimcilik ile ilgili değerli bilgilerin paylaşılacağı YTU1911 dersine Davutpaşa Kampüsü Kongre ve Kültür Merkezi’nde katılabilir veya resmi YouTube kanalımızdan canlı olarak takip edebilirsin."),
  PostModel(
      title: "yildizedu",
      subTitle: "İnşaat Fakültesi",
      profilePhoto: "assets/images/post_images/ytu_pp.png",
      image: "assets/images/post_images/yildiz_post_image (2).jpg",
      context:
          "TÜBİTAK 1001 programı kapsamında “Tsunami Dalgasının Akarsularda İlerlemesinin Modellenmesi” başlıklı projesi desteklenen YTÜ İnşaat Mühendisliği Bölümü öğretim üyemiz Doç. Dr. H. Anıl Güner'i tebrik ederiz!\n\nSu baskınlarına sebep olan tsunami dalgalarının incelenmesi ve çözümü için teklif edilen projede; kıvrımlı bir geometriye sahip akarsu boyunca ilerleyen tsunami dalgasının hareketi, fiziksel ve sayısal modelleme yardımı ile araştırılacak.\n\n#ARGEdeLiderYTÜ"),
  PostModel(
      title: "Tamer Yılmaz",
      subTitle: "Taş Bina",
      profilePhoto: "assets/profiles/tamer.jpg",
      image: "assets/images/post_images/ty_post_image (4).jpg",
      context:
          "İşte bu muhteşem ekip USIS’i tarihe gömdü.\n#OBSdeLiderYTÜ\n#EğitimdeLiderYTÜ"),
  PostModel(
      title: "SKY LAB",
      subTitle: "Yıldız Teknik Üniversitesi",
      profilePhoto: "assets/images/post_images/skylab_pp.png",
      image: "assets/images/post_images/skylab_post_image(3).jpg",
      context:
          "Aramıza hoş geldin sevgili Yıldızlı. 💫 Seninle tanışmak için çok heyecanlıyız.🌟 Merak ettiğin sorular için bizlere ulaşabilirsin. SKY LAB seni bekliyor.🤩\n\n#ytü #yıldıztekniküniversitesi #skylab"),
  PostModel(
      title: "yildizedu",
      subTitle: "Yıldız Teknik Üniversitesi",
      profilePhoto: "assets/images/post_images/ytu_pp.png",
      image: "assets/images/post_images/yildiz_post_image (4).jpg",
      context:
          '“Ben iç dünyama dönüyorum, orada hayal kırıklığına yer yok."\n\n61 yıl önce bir akademisyen olarak yolu YTÜ İnşaat Fakülesi’nden geçen, eserleri ile bize hayatın çok farklı yönlerini sevdiren, Türk Edebiyatı’nın hüzünlü ruhu Oğuz Atay’ın doğum gününü buruk bir sevinçle kutluyoruz.'),
  PostModel(
      title: "mint",
      subTitle: "Taş Bina",
      profilePhoto: "assets/images/post_images/mint_pp.png",
      image: "assets/images/post_images/mint_post_image (3).jpg",
      context:
          "Sayın Rektörümüz Prof. Dr. Tamer Yılmaz ile kulüp yönetimi olarak bir buluşma gerçekleştirdik.\n\nKulüp etkinlikleri, projelerimiz ve yüz yüze eğitim süreci hakkında konuştuğumuz buluşmaya imkan sağladığı için kendisine teşekkür ediyoruz.\n\n#EğitimdeLiderYTÜ #KulüpleriyleLiderYTÜ"),
  PostModel(
      title: "İsmet Güngör",
      subTitle: "Yalova",
      profilePhoto: "assets/profiles/pp_ismet.jpg",
      image: "assets/profiles/pp_ismet.jpg",
      context: "#tbt"),
  PostModel(
      title: "Tamer Yılmaz",
      subTitle: "Yıldız Teknik Üniversitesi",
      profilePhoto: "assets/profiles/tamer.jpg",
      image: "assets/images/post_images/ty_post_image (2).jpg",
      context:
          "Aradığımızda bulmak için “Güvenli Kampüs” belgemizi de buraya bırakıyorum.\n#SürdürülebilirKampüs\n#EğitimdeLiderYTÜ"),
];
