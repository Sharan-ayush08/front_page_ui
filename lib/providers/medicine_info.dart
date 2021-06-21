import 'package:flutter/material.dart';
import 'package:front_page_ui/models/information.dart';

class Medicines with ChangeNotifier {
  static List<Medicine> _desc = [
    Medicine(
      medicineName: 'Amoxicillin',
      medicineDesc:
          'Amoxicillin is a penicillin antibiotic that fights bacteria',
    ),
    Medicine(
      medicineName: 'Paracetamol',
      medicineDesc: '(acetaminophen) is a pain reliever and a fever reducer.',
    ),
    Medicine(
      medicineName: 'Paracetamol',
      medicineDesc: '(acetaminophen) is a pain reliever and a fever reducer.',
    ),
    Medicine(
        medicineName: 'Alka-Seltzer.',
        medicineDesc:
            'Alka-Seltzer Anti-Gas is used to relieve painful pressure caused by excess gas in the stomach and intestines.')
  ];
  List<Medicine> get items {
    return [..._desc];
  }

  void addMedicine(value) {
    _desc.add(value);
    notifyListeners();
  }
}
