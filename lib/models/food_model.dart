class FoodModel {
  String date;
  String day;
  List<String> lunchFood;
  List<String> dinnerFood;

  FoodModel(this.date, this.day, this.lunchFood, this.dinnerFood);
}

List<FoodModel> listOfFood = [
  FoodModel("20.10.2021", "Çarşamba", [
    'KAŞARLI DOMATES ÇORBA',
    'KIYMALI PATATES OTURTMA',
    'PENNE ARABİATTA',
    'VEJ. SÜTLÜ PATATES',
    'SEÇMELİ SALATA-SANDVİÇ BÜFE'
  ], [
    'DÜĞÜN ÇORBA',
    'JULYEN DİLİMLİTAVUK',
    'PENNE ARABİATTA',
    'VEJ. SÜTLÜ PATATES',
    'SEÇMELİ SALATA-SANDVİÇ BÜFE'
  ]),
  FoodModel("21.10.2021", "Perşembe", [
    'EZOGELİN ÇORBA',
    'TAVUK DÖNER',
    'PİRİNÇ PİLAVI',
    'VEJ.NOHUTLU PATLICAN',
    'SEÇMELİ SALATA-SANDVİÇ BÜFE'
  ], [
    'YAYLA ÇORBA',
    'ET DÖNER',
    'PİRİNÇ PİLAVI',
    'VEJ.NOHUTLU PATLICAN',
    'SEÇMELİ SALATA-SANDVİÇ BÜFE'
  ]),
];
