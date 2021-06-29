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
    "LabWork",
    "More"
  ];
  final _iconTypes = <IconData>[
    Icons.medication_rounded,
    Icons.medical_services,
    Icons.person,
    Icons.car_rental_outlined,
    Icons.local_hospital,
    Icons.house,
    Icons.more
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(9.0),
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
                  if (_services[index] == 'Medicines') {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ViewMedicines()),
                    );
                  }
                });
              },
              child: Container(
                // width: 100.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.green),
                child: Card(
                  color: Colors.black,
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
                          style: TextStyle(color: Colors.white, fontSize: 15.0),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
