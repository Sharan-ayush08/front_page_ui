import 'package:flutter/material.dart';
import 'package:front_page_ui/models/Conditions/allergy.dart';
import 'package:front_page_ui/providers/conditions/condtion_info.dart';

class ViewAllergies extends StatelessWidget {
  const ViewAllergies({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Allergy> allergyInfo = Allergies.allergyList;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text("Diseases & Conditions"),
      ),
      body: allergyInfo.isEmpty
          ? Center(
              child: Text("No Diseases Found!!!"),
            )
          : ListView.builder(
              itemCount: allergyInfo.length,
              itemBuilder: (BuildContext ctx, int index) {
                return InkWell(
                  onTap: () {},
                  child: Column(
                    children: <ListTile>[
                      ListTile(
                        title: Text(
                          allergyInfo[index].item,
                          style: TextStyle(fontSize: 20.0),
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
    );
  }
}
