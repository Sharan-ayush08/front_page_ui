import 'package:flutter/material.dart';
import 'package:front_page_ui/screens/page_elements.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';

class Frontpage extends StatefulWidget {
  const Frontpage({Key? key}) : super(key: key);

  @override
  _FrontpageState createState() => _FrontpageState();
}

class _FrontpageState extends State<Frontpage> {
  final List<String> _listItem = [
    "assets/icons/general_practice.png",
    "assets/icons/immunisation.png",
    "assets/icons/specialist.png",
    "assets/icons/logo.png",
    "assets/icons/sexual_health.png",
  ];
  final List<String> _names = [
    "Genral Practice",
    "Immunisation",
    "Specialist",
    "Meds",
    "Health",
  ];
  int currentBarItem = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue[400],
        elevation: 0,
        title: Text("MEDICAL SERVICES"),
      ),
      body: Column(
        children: [
          Container(
            height: 300,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(70.0),
                bottomRight: Radius.circular(70.0),
              ),
              image: DecorationImage(
                image: AssetImage("assets/icons/medical.jpg"),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 25.0, left: 35.0),
              child: Text(
                "Welcome...",
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          ListTile(
            leading: Text(
              "Our Health Services",
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w700,
                  color: Colors.blue),
            ),
            trailing: Icon(Icons.menu),
          ),
          Expanded(
            child: Container(
              child: GridView.count(
                crossAxisCount: 3,
                padding: EdgeInsets.all(18.0),
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                children: _listItem
                    .map(
                      (item) => Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(item), fit: BoxFit.cover)),
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
