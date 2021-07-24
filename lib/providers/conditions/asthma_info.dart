import 'package:flutter/material.dart';
import 'package:front_page_ui/models/conditions/asthma.dart';

class Asthmas with ChangeNotifier {
  static List<Asthma> asthmaList = [
    Asthma(item: 'Allergic and Environmental Asthma'),
    Asthma(item: 'Asthma'),
  ];

  List<Asthma> get items {
    return [...asthmaList];
  }

  void addConditions(value) {
    asthmaList.add(value);
    notifyListeners();
  }
}
