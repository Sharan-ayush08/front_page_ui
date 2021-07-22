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

List<String> _desc = [];

Map<String, Map<String, String>> medicine = {
  'abatacept': {
    'Dosage & Indication': 'Injection,Iyophilized powder for reconsitution',
    'Interaction': 'Cntradicated...',
    'Adverse Effects': "Headacge(18%),Nasopharyngits(12%)",
    'Warning': 'None Listed by the manfucaturer',
    'Pregnancy':
        'Healthcare professional are encouraged to register patients and pregant women.',
    'Pharmacology': 'chemeric protein',
    'Adminstration':
        'Reconstitute each vial contents with 10ml sterile water for injection uisng Only the silicions-free.',
    'Image': 'Loading',
    'Formulary': 'Orenica,Orencia ClickJet'
  },
  'abacavir': {
    'Dosage & Indication':
        'Indicated for treatment of HIV infection in combination with other antirevorial agents.',
    'Interaction': 'Cntradicated...',
    'Adverse Effects': 'Nausea,Heache',
    'Warning': 'Hyoersentivity reactions',
    'Pregnancy':
        'Healthcare professional are encouraged to register patients and pregant women.',
    'Pharmacology':
        'Gaunsoine analog that inhibits HIV-1 reverse transcriptes by completing with dGTP.',
    'Adminstration':
        'Reconstitute each vial contents with 10ml sterile water for injection uisng Only the silicions-free.',
    'Image': 'Loading',
    'Formulary': 'Orenica,Orencia ClickJet'

  },
  // Trying to implement here but was not able to...
  
};

