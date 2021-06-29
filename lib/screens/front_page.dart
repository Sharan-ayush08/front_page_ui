import 'package:flutter/material.dart';
import 'package:front_page_ui/screens/page_elements.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';

class Frontpage extends StatefulWidget {
  const Frontpage({Key? key}) : super(key: key);

  @override
  _FrontpageState createState() => _FrontpageState();
}

class _FrontpageState extends State<Frontpage> {
  int currentBarItem = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("MEDICAL SERVICES"),
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Colors.blue, Colors.red, Colors.blue, Colors.white],
            ),
          ),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 25, left: 20, right: 20),
                height: 60.0,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Color(0x14000000),
                        offset: Offset(0, 10),
                        blurRadius: 15,
                        spreadRadius: 0),
                  ],
                ),
                child: Row(
                  children: [
                    Expanded(
                      flex: 5,
                      child: Container(
                        margin: EdgeInsets.only(left: 10, right: 10),
                        child: TextField(
                          maxLines: 1,
                          autofocus: false,
                          style: TextStyle(
                              color: Color(0xff1071613), fontSize: 20),
                          decoration: InputDecoration(
                              border: InputBorder.none, hintText: "Search"),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color(0xff1071613),
                            borderRadius: BorderRadius.circular(5)),
                        child: Center(
                          child:
                              Icon(Icons.search, color: Colors.white, size: 25),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                margin: EdgeInsets.only(top: 20, left: 20),
                child: Stack(
                  children: [
                    Container(
                      child: Text(
                        "Category",
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 20),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "Show all",
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Roboto',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              PageElements(),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavyBar(
          selectedIndex: currentBarItem,
          onItemSelected: (index) {
            setState(() {
              currentBarItem = index;
            });
          },
          items: <BottomNavyBarItem>[
            BottomNavyBarItem(
                icon: Icon(Icons.home),
                title: Text("Home"),
                activeColor: Colors.blue,
                inactiveColor: Colors.black),
            BottomNavyBarItem(
                icon: Icon(Icons.health_and_safety),
                title: Text("HealthCare"),
                activeColor: Colors.blue,
                inactiveColor: Colors.black),
            BottomNavyBarItem(
                icon: Icon(Icons.search),
                title: Text("Diagnostics"),
                activeColor: Colors.blue,
                inactiveColor: Colors.black),
            BottomNavyBarItem(
                icon: Icon(Icons.person),
                title: Text("Account"),
                activeColor: Colors.blue,
                inactiveColor: Colors.black),
          ],
        ));
  }
}
