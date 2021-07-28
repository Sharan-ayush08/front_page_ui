import 'package:flutter/material.dart';

class Allergies with ChangeNotifier {
  Map<String, Map<String, dynamic>> _allergyList = {
    'Allergy and Immunology': {
      'Allergy Pathogensis': {
        'Aeroallergens': {
          'Practice OverView': 'Both',
          'OverView': 'Something',
        }
      }
    },
    'Anesthesilogy': {
      'Crtical Events': {
        'Airway Energencies': {
          'Practice Essentials': 'Airway emegency develops',
          'Problem': 'A difficult airway',
        }
      }
    }
  };
  Map<String, Map<String, dynamic>> get items {
    return _allergyList;
  }
}
