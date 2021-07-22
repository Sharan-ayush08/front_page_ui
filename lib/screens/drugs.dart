import 'package:flutter/material.dart';
import 'package:front_page_ui/models/drugs.dart';
import 'package:front_page_ui/providers/medicine_info.dart';
import 'package:front_page_ui/screens/drugs_detailed.dart';
import 'package:provider/provider.dart';

class ViewMedicines extends StatelessWidget {
  const ViewMedicines({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // late final desc = Firebasedataase.instance.refrence();
    // List<Medicine> medicineInfo = Medicines.desc;
    final _drugs = Provider.of<Medicines>(context).items;
    final List _drugNames = _drugs.keys.toList();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text("Drugs List"),
      ),
      body: _drugNames.isEmpty
          ? Center(
              child: Text("No such Medicines"),
            )
          : ListView.builder(
              itemCount: _drugNames.length,
              itemBuilder: (BuildContext ctx, int index) {
                return Card(
                  child: Column(
                    children: <ListTile>[
                      ListTile(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) =>
                                  DrugDetails(drug: _drugNames[index])));
                        },
                        title: Text(
                          _drugNames[index],
                          style: TextStyle(fontSize: 20.0),
                        ),
                        // subtitle: Text(
                        //   'Medicine Desc: ' +
                        //       medicineInfo[index].medicineDesc,
                        //   // addMedicine(medicine)
                        //   style: TextStyle(fontSize: 18.0),
                        // ),
                      )
                    ],
                  ),
                );
              },
            ),
    );
  }
}
