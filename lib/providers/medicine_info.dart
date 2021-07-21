import 'package:flutter/material.dart';
import 'package:front_page_ui/models/drugs.dart';

class Medicines with ChangeNotifier {
  // static List<Medicine> desc = [
  //   Medicine(
  //     id: '1',
  //     medicineName: 'Amoxicillin',
  //     medicineDesc:
  //         'Amoxicillin is a penicillin antibiotic that fights bacteria',
  //   ),
  //   Medicine(
  //     id: '2',
  //     medicineName: 'Paracetamol',
  //     medicineDesc: 'Paracetamol is a pain reliever and a fever reducer.',
  //   ),
  //   Medicine(
  //     id: '3',
  //     medicineName: 'Paracetamol',
  //     medicineDesc: 'Paracetamol is a pain reliever and a fever reducer.',
  //   ),
  //   Medicine(
  //       id: '4',
  //       medicineName: 'Alka-Seltzer.',
  //       medicineDesc:
  //           'Alka-Seltzer Anti-Gas is used to relieve painful pressure caused by excess gas in the stomach and intestines.')
  // ];
  // List<Medicine> get items {
  //   return [...desc];
  // }

  // void addMedicine(value) {
  //   desc.add(value);
  //   notifyListeners();
}

Map<String, dynamic> medicine = {
  // "id": '1',
  "medicineName": 'Paracetamol',
  "medicineDesc": 'Paracetamol is a pain reliever and a fever reducer'
};

void addMedicine(Map medicine) {
  medicine.forEach((key, value) {
    print('medicineName =$key : medicineDesc=$value');
  });
}
