import 'package:flutter/material.dart';

class PageElemnts extends StatefulWidget {
  const PageElemnts({Key? key}) : super(key: key);

  @override
  _PageElemntsState createState() => _PageElemntsState();
}

class _PageElemntsState extends State<PageElemnts> {
  // final List<String> _services = [
  //   "Diagonistic",
  //   "Shorts",
  //   "Consulting",
  //   "Ambulance",
  //   "Nurse",
  //   "LabWork"
  // ];

  @override
  Widget build(BuildContext context) {
    //return Expanded(
    //   child: GridView.count(
    //     crossAxisCount: 3,
    //     crossAxisSpacing: 10,
    //     mainAxisSpacing: 10,
    //     children: _services
    //         .map(
    //           (item) => Container(

    //             decoration: BoxDecoration(
    //               borderRadius: BorderRadius.circular(25),
    //               color: Colors.white,
    //             ),

    //           ),
    //         )
    //         .toList(),
    //   ),
    // );
    return Expanded(
      child: GridView.count(
        crossAxisCount: 3,
        children: <Widget>[
          Card(
            color: Colors.white,
            child: Stack(
              children: <Widget>[
                Center(
                  child: Icon(Icons.medical_services),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 45),
                    child: Center(child: Text("Medicine")),
                  ),
                )
              ],
            ),
          ),
          Card(
            color: Colors.white,
            child: Stack(
              children: <Widget>[Center(child: Icon(Icons.local_hospital))],
            ),
          ),
          Card(
            color: Colors.white,
            child: Stack(
              children: <Widget>[
                Center(
                  child: Icon(Icons.room_service),
                )
              ],
            ),
          ),
          Card(
            color: Colors.white,
            child: Stack(
              children: <Widget>[
                Center(
                  child: Icon(Icons.card_travel),
                )
              ],
            ),
          ),
          Card(
            color: Colors.white,
            child: Stack(
              children: <Widget>[
                Center(
                  child: Icon(Icons.card_travel),
                )
              ],
            ),
          ),
          Card(
            color: Colors.white,
            child: Stack(
              children: <Widget>[
                Center(
                  child: Icon(Icons.card_travel),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
