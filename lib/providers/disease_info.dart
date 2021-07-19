import 'package:flutter/material.dart';
import 'package:front_page_ui/models/conditions.dart';

class Conditions with ChangeNotifier {
  static List<Condition> conditionList = [
    Condition(disease: 'Allergy & Immulogy'),
    Condition(disease: 'Anesthesiology'),
    Condition(disease: 'Cancer Guides'),
    Condition(disease: 'Cardilogy'),
    Condition(disease: 'Cardilogy Guidelines'),
    Condition(disease: 'Crticial Care'),
    Condition(disease: 'Denstistry'),
    Condition(disease: 'Emergency Medicines'),
  ];

  List<Condition> get items {
    return [...conditionList];
  }

  void addConditions(value) {
    conditionList.add(value);
    notifyListeners();
  }
}
