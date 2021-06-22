import 'package:flutter/material.dart';
import 'package:front_page_ui/screens/drugs.dart';

class PageElements extends StatefulWidget {
  const PageElements({Key? key}) : super(key: key);

  @override
  _PageElemntsState createState() => _PageElemntsState();
}

class _PageElemntsState extends State<PageElements> {
  final List<String> _services = [
    "Medicines",
    "Shots",
    "Consulting",
    "Ambulance",
    "Nurse",
    "LabWork"
  ];
  final _iconTypes = <IconData>[
    Icons.medication_rounded,
    Icons.medical_services,
    Icons.person,
    Icons.car_rental_outlined,
    Icons.local_hospital,
    Icons.house,
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

                  if (_services[index] == 'Medicines') {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ViewMedicines()),
                    );
                  }
                });
              },
              child: Container(
                  width: 100.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35.0),
                      color: Color(0xff107163)),
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          _iconTypes[index],
                          color: Colors.white,
                          size: 30.0,
                        ),
                        Text(
                          _services[index],
                          style: TextStyle(color: Colors.white, fontSize: 20.0),
                        ),
                      ],
                    ),
                  )),
            );
          },
        ),
      ),
    );
  }
}
