import 'package:flutter/material.dart';
import 'package:front_page_ui/models/conditions/allergy.dart';

class AllergiesList with ChangeNotifier {
  static List<Allergy> item = [
    Allergy(
      item: 'Allergy Pathogenis',
    ),
    Allergy(item: 'Asthma')
  ];
  List<Allergy> get items {
    return [...item];
  }

  void addProcedure(value) {
    item.add(value);
    notifyListeners();
  }
}
