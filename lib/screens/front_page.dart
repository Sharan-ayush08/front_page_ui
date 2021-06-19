import 'package:flutter/material.dart';
import 'package:front_page_ui/screens/page_elements.dart';

class Frontpage extends StatefulWidget {
  const Frontpage({Key? key}) : super(key: key);

  @override
  _FrontpageState createState() => _FrontpageState();
}

class _FrontpageState extends State<Frontpage> {
  bool _folded = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("UI-DEISGN"),
      ),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 10.0),
            ),
            Center(
              child: AnimatedContainer(
                duration: Duration(microseconds: 400),
                width: _folded ? 56 : double.infinity,
                height: 55,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(32),
                    boxShadow: kElevationToShadow[6]),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                          padding: EdgeInsets.only(left: 16),
                          child: !_folded
                              ? TextField(
                                  decoration: InputDecoration(
                                      hintText: 'Search',
                                      hintStyle:
                                          TextStyle(color: Colors.blue[300]),
                                      border: InputBorder.none),
                                )
                              : null),
                    ),
                    AnimatedContainer(
                      duration: Duration(milliseconds: 400),
                      child: Material(
                        type: MaterialType.transparency,
                        child: InkWell(
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Icon(
                              Icons.search,
                              color: Colors.purple,
                            ),
                          ),
                          onTap: () {
                            setState(() {
                              _folded = !_folded;
                            });
                          },
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            PageElemnts(),
          ],
        ),
      ),
    );
  }
}
