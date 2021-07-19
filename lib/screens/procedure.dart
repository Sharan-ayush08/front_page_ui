import 'package:flutter/material.dart';
import 'package:front_page_ui/models/procedure.dart';
import 'package:front_page_ui/providers/procedure_info.dart';

class ViewProcedures extends StatelessWidget {
  const ViewProcedures({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Procedure> procedureInfo = Procedures.item;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          title: Text("Procedures"),
        ),
        body: procedureInfo.isEmpty
            ? Center(
                child: Text("No such Procedures"),
              )
            : ListView.builder(
                itemCount: procedureInfo.length,
                itemBuilder: (BuildContext ctx, int index) {
                  return InkWell(
                    onTap: () {},
                    child: Column(
                      children: <Widget>[
                        ListTile(
                          leading: Text(
                            procedureInfo[index].names,
                            style: TextStyle(fontSize: 20.0),
                          ),
                        )
                      ],
                    ),
                  );
                }));
  }
}
