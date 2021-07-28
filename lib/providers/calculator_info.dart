import 'package:flutter/material.dart';
import 'package:front_page_ui/models/calculators.dart';

class Calculators with ChangeNotifier {
  static List<Calculator> calcDesc = [
    Calculator(calculator: 'General Calculators'),
    Calculator(calculator: 'Addiction Medicine'),
    Calculator(calculator: 'Anesthesiology'),
    // Calculator(calculator: 'Cardiac Surgery'),
    // Calculator(calculator: 'Cardiology'),
    // Calculator(calculator: 'COVID-19'),
    // Calculator(calculator: 'Crtical Care'),
    // Calculator(calculator: 'Emergency'),
    // Calculator(calculator: 'Endocrinology'),
    // Calculator(calculator: 'Gastroenterology'),
    // Calculator(calculator: 'Geriastrics'),
    // Calculator(calculator: 'Hematology')
  ];

  List<Calculator> get items {
    return [...calcDesc];
  }

  void addCalculator(value) {
    calcDesc.add(value);
    notifyListeners();
  }
}
