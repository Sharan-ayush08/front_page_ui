import 'package:flutter/material.dart';
import 'package:front_page_ui/models/Conditions/allergy.dart';

class Allergies with ChangeNotifier {
  static List<Allergy> allergyList = [
    Allergy(item: 'Allergy Pathogenesis'),
    Allergy(item: 'Asthma'),
  ];

  List<Allergy> get items {
    return [...allergyList];
  }

  void addConditions(value) {
    allergyList.add(value);
    notifyListeners();
  }
}
