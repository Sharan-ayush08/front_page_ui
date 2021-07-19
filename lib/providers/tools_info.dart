import 'package:flutter/material.dart';
import 'package:front_page_ui/models/more.dart';

class Tools with ChangeNotifier {
  static List<Tool> toolItem = [
    Tool(tool: "Drugs"),
    Tool(tool: "Procedures"),
    Tool(tool: "Conditions"),
    Tool(tool: "Calculators"),
    Tool(tool: "Injection"),
    Tool(tool: "Formulary"),
    Tool(tool: "Cases & Quizzes"),
    Tool(tool: "Directory"),
  ];
  List<Tool> get items {
    return [...toolItem];
  }

  void addTool(value) {
    toolItem.add(value);
    notifyListeners();
  }
}
