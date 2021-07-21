import 'package:flutter/foundation.dart';

class Medicine with ChangeNotifier {
  String medicineName;
  String medicineDesc;
  String id;

  Medicine({
    this.id = '',
    this.medicineName = '',
    this.medicineDesc = '',
  });
}
