import 'package:flutter/material.dart';
import 'package:front_page_ui/screens/drugs.dart';
import 'package:google_fonts/google_fonts.dart';

class PageElements extends StatefulWidget {
  const PageElements({Key? key}) : super(key: key);

  @override
  _PageElemntsState createState() => _PageElemntsState();
}

class _PageElemntsState extends State<PageElements> {
  // final List<String> _services = [
  //   "Medicines",
  //   "Shots",
  //   "Consulting",
  //   "Ambulance",
  //   "Nurse",
  //   "LabWork",
  //   "More"
  // ];
  // final _iconTypes = <IconData>[
  //   Icons.medication_rounded,
  //   Icons.medical_services,
  //   Icons.person,
  //   Icons.car_rental_outlined,
  //   Icons.local_hospital,
  //   Icons.house,
  //   Icons.more
  // ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Card(
              color: Colors.transparent,
              child: ListTile(
                leading: Icon(
                  Icons.medical_services,
                  color: Colors.white,
                ),
                title: Text('Medicines',
                    style: GoogleFonts.acme(fontSize: 20, color: Colors.white)),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Card(
              color: Colors.transparent,
              child: ListTile(
                leading: Icon(
                  Icons.medication_outlined,
                  color: Colors.white,
                ),
                title: Text('Shots',
                    style: GoogleFonts.acme(fontSize: 20, color: Colors.white)),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Card(
              color: Colors.transparent,
              child: ListTile(
                leading: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
                title: Text('Consulting',
                    style: GoogleFonts.acme(fontSize: 20, color: Colors.white)),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Card(
              color: Colors.transparent,
              child: ListTile(
                leading: Icon(
                  Icons.horizontal_split_sharp,
                  color: Colors.white,
                ),
                title: Text('Ambulance',
                    style: GoogleFonts.acme(fontSize: 20, color: Colors.white)),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Card(
              color: Colors.transparent,
              child: ListTile(
                leading: Icon(
                  Icons.local_hospital,
                  color: Colors.white,
                ),
                title: Text('Nurse',
                    style: GoogleFonts.acme(fontSize: 20, color: Colors.white)),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Card(
              color: Colors.transparent,
              child: ListTile(
                leading: Icon(
                  Icons.local_hospital,
                  color: Colors.white,
                ),
                title: Text('LabWork',
                    style: GoogleFonts.acme(fontSize: 20, color: Colors.white)),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          // ListTile(
          //   trailing: Icon(
          //     Icons.more_horiz,
          //     size: 50.0,
          //   ),
          // )
        ],
      ),
    );
  }
}
