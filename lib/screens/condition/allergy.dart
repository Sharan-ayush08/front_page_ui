import 'package:flutter/material.dart';
import 'package:front_page_ui/providers/conditions/allergy_info.dart';
import 'package:front_page_ui/screens/condition/allergy_detailed.dart';
import 'package:provider/provider.dart';

class ViewAllergies extends StatelessWidget {
  const ViewAllergies({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // late final desc = Firebasedataase.instance.refrence();
    // List<Medicine> medicineInfo = Medicines.desc;
    final _allergy = Provider.of<Allergies>(context).items;
    final List _allergynames = _allergy.keys.toList();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text("Drugs List"),
      ),
      body: _allergynames.isEmpty
          ? Center(
              child: Text("No such Medicines"),
            )
          : ListView.builder(
              itemCount: _allergynames.length,
              itemBuilder: (BuildContext ctx, int index) {
                return Card(
                  child: Column(
                    children: <ListTile>[
                      ListTile(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => AllergyDetails(
                                  allergy: _allergynames[index])));
                        },
                        title: Text(
                          _allergynames[index],
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
