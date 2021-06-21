import 'package:flutter/material.dart';
import 'package:front_page_ui/screens/drugs.dart';

class PageElemnts extends StatefulWidget {
  const PageElemnts({Key? key}) : super(key: key);

  @override
  _PageElemntsState createState() => _PageElemntsState();
}

class _PageElemntsState extends State<PageElemnts> {
  final List<String> _services = [
    "Medicines",
    "Shots",
    "Consulting",
    "Ambulance",
    "Nurse",
    "LabWork"
  ];
  int _selectedContainer = 0;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: GridView.builder(
          itemCount: _services.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 20.0,
              mainAxisSpacing: 15.0,
              childAspectRatio: 1.2,
              mainAxisExtent: 80.0),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  _selectedContainer = index;
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => ViewMedicines()),
                  // );

                  if (_services[index] == 'Medicines') {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ViewMedicines()));
                  }

                  // _services[index] == 'Medicines' ? Navigator.push(context, MaterialPageRoute(builder: (context) => ViewMedicines())):
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(28.0),
                  color: _selectedContainer == index
                      ? Colors.amber[300]
                      : Colors.white,
                ),
                child: Center(
                  child:
                      Text(_services[index], style: TextStyle(fontSize: 15.0)),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
