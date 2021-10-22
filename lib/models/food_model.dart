class FoodModel {
  String date;
  String day;
  String lunchFood;
  String dinnerFood;

  FoodModel(this.date, this.day, this.lunchFood, this.dinnerFood);
}

var tempFoodMenu = FoodModel(
    DateTime.now().toString(),
    "Çarşamba",
    'KAŞARLI DOMATES ÇORBA\nKIYMALI PATATES OTURTMA\nPENNE ARABİATTA\nVEJ. SÜTLÜ PATATES\nSEÇMELİ SALATA-SANDVİÇ BÜFE',
    'DÜĞÜN ÇORBA\nJULYEN DİLİMLİTAVUK\nPENNE ARABİATTA\nVEJ. SÜTLÜ PATATES\nSEÇMELİ SALATA-SANDVİÇ BÜFE');
