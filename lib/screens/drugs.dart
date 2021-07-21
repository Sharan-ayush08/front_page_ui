import 'package:flutter/material.dart';
import 'package:front_page_ui/models/drugs.dart';
import 'package:front_page_ui/providers/medicine_info.dart';

class ViewMedicines extends StatelessWidget {
  const ViewMedicines({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // late final desc = Firebasedataase.instance.refrence();
    // List<Medicine> medicineInfo = Medicines.desc;
    var medicineInfo;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text("Drugs List"),
      ),
      body: medicineInfo.isEmpty
          ? Center(
              child: Text("No such Medicines"),
            )
          : ListView.builder(
              itemCount: medicineInfo.length,
              itemBuilder: (BuildContext ctx, int index) {
                return Card(
                  child: InkWell(
                    onTap: () {},
                    child: Column(
                      children: <ListTile>[
                        ListTile(
                          title: Text(
                            medicineInfo[index].medicineName,
                            style: TextStyle(fontSize: 20.0),
                          ),
                          subtitle: Text(
                            'Medicine Desc: ' +
                                medicineInfo[index].medicineDesc,
                            // addMedicine(medicine)
                            style: TextStyle(fontSize: 18.0),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
    );
  }
}
