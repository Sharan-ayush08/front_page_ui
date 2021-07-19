import 'package:flutter/foundation.dart';

class Medicine with ChangeNotifier {
  String medicineName;
  String medicineDesc;

  Medicine({
    this.medicineName = '',
    this.medicineDesc = '',
  });
}
