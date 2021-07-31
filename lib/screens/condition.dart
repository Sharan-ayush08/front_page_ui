import 'package:flutter/material.dart';
import 'package:front_page_ui/providers/conditions/condition_data.dart';
import 'package:front_page_ui/screens/condition_detalied.dart';
import 'package:provider/provider.dart';

class ViewConditions extends StatelessWidget {
  const ViewConditions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _condition = Provider.of<Conditions>(context).items;
    final List _conditionNames = _condition.keys.toList();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text("Diseases & Conditions"),
      ),
      body: _conditionNames.isEmpty
          ? Center(
              child: Text("No Diseases Found!!!"),
            )
          : ListView.builder(
              itemCount: _conditionNames.length,
              itemBuilder: (BuildContext ctx, int index) {
                return InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ConditionDetailed(
                              title: _conditionNames[index],
                              condition: _condition[_conditionNames[index]],

                              // ['Allergy and Immunology']
                            )));
                  },
                  child: Column(
                    children: <ListTile>[
                      ListTile(
                        title: Text(
                          _conditionNames[index],
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
