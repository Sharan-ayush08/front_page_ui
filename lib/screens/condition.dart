import 'package:flutter/material.dart';
import 'package:front_page_ui/models/conditions.dart';
import 'package:front_page_ui/providers/disease_info.dart';

class ViewConditions extends StatelessWidget {
  const ViewConditions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Condition> conditionInfo = Conditions.conditionList;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text("Drugs List"),
      ),
      body: conditionInfo.isEmpty
          ? Center(
              child: Text("No such Medicines"),
            )
          : ListView.builder(
              itemCount: conditionInfo.length,
              itemBuilder: (BuildContext ctx, int index) {
                return InkWell(
                  onTap: () {},
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
