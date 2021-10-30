import 'package:intl/intl.dart';

import 'days.dart';

class FoodModel {
  String date;
  String day;
  String lunchFood;
  String dinnerFood;

  FoodModel(this.date, this.day, this.lunchFood, this.dinnerFood);
}

var tempFoodMenu = FoodModel(
    "${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}",
    days[DateFormat('EEEE').format(DateTime.now())] ?? "Bilinmiyor..",
    'KAŞARLI DOMATES ÇORBA\nKIYMALI PATATES OTURTMA\nPENNE ARABİATTA\nVEJ. SÜTLÜ PATATES\nSEÇMELİ SALATA-SANDVİÇ BÜFE',
    'DÜĞÜN ÇORBA\nJULYEN DİLİMLİTAVUK\nPENNE ARABİATTA\nVEJ. SÜTLÜ PATATES\nSEÇMELİ SALATA-SANDVİÇ BÜFE');
