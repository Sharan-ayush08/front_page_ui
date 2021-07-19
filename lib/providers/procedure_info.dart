import 'package:flutter/material.dart';
import 'package:front_page_ui/models/procedure.dart';

class Procedures with ChangeNotifier {
  static List<Procedure> item = [
    Procedure(names: "Anatnomy"),
    Procedure(names: "Anesthetic Techniques"),
    Procedure(names: "Brain and Spinal Cord"),
    Procedure(names: "Critical Care"),
    Procedure(names: "Diagnostic Imaging"),
    Procedure(names: "Ear,Nose,Throat,and Dental"),
    Procedure(names: "Eye"),
    Procedure(names: "Gastrointestinal"),
  ];
  List<Procedure> get items {
    return [...item];
  }

  void addProcedure(value) {
    item.add(value);
    notifyListeners();
  }
}
