import 'package:flutter/material.dart';
import 'package:front_page_ui/models/conditions.dart';
import 'package:front_page_ui/providers/disease_info.dart';
import 'package:front_page_ui/screens/condition/allergy.dart';

class ViewConditions extends StatelessWidget {
  const ViewConditions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Condition> conditionInfo = Conditions.conditionList;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text("Diseases & Conditions"),
      ),
      body: conditionInfo.isEmpty
          ? Center(
              child: Text("No Diseases Found!!!"),
            )
          : ListView.builder(
              itemCount: conditionInfo.length,
              itemBuilder: (BuildContext ctx, int index) {
                return InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ViewAllergies()));
                  },
                  child: Column(
                    children: <ListTile>[
                      ListTile(
                        title: Text(
                          conditionInfo[index].disease,
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
