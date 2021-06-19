import 'package:flutter/material.dart';

class PageElemnts extends StatefulWidget {
  const PageElemnts({Key? key}) : super(key: key);

  @override
  _PageElemntsState createState() => _PageElemntsState();
}

class _PageElemntsState extends State<PageElemnts> {
  final List<String> _services = [
    "Diagonistic",
    "Shorts",
    "Consulting",
    "Ambulance",
    "Nurse",
    "LabWork"
  ];
  int _selectedContainer = 0;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      // child: GridView.builder(
      //   gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
      //       maxCrossAxisExtent: 100, childAspectRatio: 1.5),
      //   itemBuilder: (context, index) {
      //     return Container(
      //       decoration: BoxDecoration(),
      //       color: Colors.amber,
      //       child: Center(child: Text(_services[index])),
      //     );
      //   },
      // )
      // ,
      child: GridView.count(
        crossAxisCount: 3,
        childAspectRatio: 2,
        crossAxisSpacing: 0,
        controller: new ScrollController(
          keepScrollOffset: false,
        ),
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        children: _services.map((String value) {
          return GestureDetector(
            onTap: () {
              setState(() {});
            },
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.blue),
              margin: EdgeInsets.all(5.0),
              child: Center(
                child: Text(
                  value,
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
