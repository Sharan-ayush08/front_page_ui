import 'package:flutter/material.dart';
import 'package:front_page_ui/models/procedure.dart';
import 'package:front_page_ui/providers/procedure_info.dart';
import 'package:front_page_ui/screens/procedures_items/antanomy.dart';

class ViewProcedures extends StatefulWidget {
  const ViewProcedures({Key? key}) : super(key: key);

  @override
  _ViewProceduresState createState() => _ViewProceduresState();
}

class _ViewProceduresState extends State<ViewProcedures> {
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
                    onTap: () {
                      setState(() {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          var selectedPage;
                          switch (selectedPage) {
                            case 'Anatnomy':
                              return ViewAnatnomy();
                              // ignore: dead_code
                              break;

                            default:
                              return ViewAnatnomy();
                          }
                        }));
                      });
                    },
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
