import 'package:flutter/material.dart';
import 'package:front_page_ui/screens/drugs.dart';
import 'package:front_page_ui/screens/page_elements.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';

class Frontpage extends StatefulWidget {
  const Frontpage({Key? key}) : super(key: key);

  @override
  _FrontpageState createState() => _FrontpageState();
}

class _FrontpageState extends State<Frontpage> {
  final List _listItem = [
    // Icon(Icons.local_hospital),
    // Icon(Icons.medical_services),
    // Icon(Icons.mediation),
    // Icon(Icons.local_hospital),
    // Icon(Icons.local_hospital),
    // Icon(Icons.local_hospital),
    // Icon(Icons.local_hospital),
    // Icon(Icons.local_hospital),
    Icons.local_hospital,
    Icons.local_hospital,
    Icons.local_hospital,
    Icons.local_hospital,
    Icons.local_hospital,
    Icons.local_hospital,
    Icons.local_hospital,
    Icons.more_horiz,
  ];
  final List<String> _text = [
    "health",
    "hospital",
    "medicine",
    "health",
    "hospital",
    "medicine",
    "health",
    "More",
  ];

  int currentBarItem = 0;
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
            child: Expanded(
              flex: 1,
              child: GridView.builder(
                itemCount: _listItem.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  crossAxisSpacing: 15.0,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    child: Column(
                      children: <Widget>[
                        InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ViewMedicines()));
                            },
                            child: Icon(_listItem[index],
                                size: 40.0, color: Colors.red)),
                        Text(_text[index])
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.health_and_safety),
            label: "Health Care",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search_rounded),
            label: "Diagnostics",
          ),
        ],
      ),
    );
  }
}
