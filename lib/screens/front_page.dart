import 'package:flutter/material.dart';
import 'package:front_page_ui/screens/calculator_info.dart';
import 'package:front_page_ui/screens/condition.dart';
import 'package:front_page_ui/screens/drugs.dart';
import 'package:front_page_ui/screens/drugs_detailed.dart';
import 'package:front_page_ui/screens/procedure.dart';
import 'package:front_page_ui/screens/tools.dart';

class Frontpage extends StatefulWidget {
  const Frontpage({Key? key}) : super(key: key);

  @override
  _FrontpageState createState() => _FrontpageState();
}

class _FrontpageState extends State<Frontpage> {
  final List _listItem = [
    Icons.add_circle,
    Icons.local_hospital,
    Icons.local_hospital,
    Icons.local_hospital,
    Icons.local_hospital,
    Icons.local_hospital,
    Icons.local_hospital,
    Icons.more_horiz,
  ];
  final List<String> _text = [
    "Drugs",
    "Procedures",
    "Conditions",
    "Calculators",
    "Injection",
    "Health",
    "Pill Indentifier",
    "More",
  ];

  final List<dynamic> page = [
    ViewMedicines(),
    ViewProcedures(),
    ViewConditions(),
    ViewCalculators(),
    ViewTools(),
    // DrugDetails(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text("MEDICAL SERVICES"),
      ),
      body: Column(
        children: [
          Container(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(offset: Offset(0, 1), blurRadius: 2),
                ],
              ),
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
                    hintText: "Search for medicines and Health care..."),
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            height: 180.0,
            child: GridView.builder(
              itemCount: _text.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                crossAxisSpacing: 15.0,
              ),
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  child: Column(
                    children: [
                      IconButton(
                        onPressed: () {
                          setState(() {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => page[index]));
                          });
                        },
                        icon: Icon(
                          _listItem[index],
                          color: Colors.red,
                        ),
                      ),
                      Text(_text[index])
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
