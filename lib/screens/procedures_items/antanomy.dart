import 'package:flutter/material.dart';
import 'package:front_page_ui/providers/procedure_detailed/anatomy.dart';
import 'package:front_page_ui/screens/procedures_items/antanomy_detailed.dart';
import 'package:provider/provider.dart';

class ViewAnatnomy extends StatelessWidget {
  const ViewAnatnomy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final List<String> item = [
    //   'Ankle Joint Anatomy',
    //   'Anal Canal Anatomy',
    //   'Arotic Valve Anatomy',
    // ];
    final _anatomy = Provider.of<Anatomy>(context).items;
    final List _anatomy_details = _anatomy.keys.toList();
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Anatomy",
            style: TextStyle(
              color: Colors.blue[900],
            ),
          ),
        ),
        body: _anatomy_details.isEmpty
            ? Center(
                child: Text("No Anatomy Details Found"),
              )
            : ListView.builder(
                itemCount: _anatomy_details.length,
                itemBuilder: (BuildContext ctx, int index) {
                  return Column(
                    children: [
                      ListTile(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => AnatomyDetails(
                                  anatomy: _anatomy_details[index])));
                        },
                        title: Text(
                          _anatomy_details[index],
                          style: TextStyle(fontSize: 20.0),
                        ),
                      )
                    ],
                  );
                }));
  }
}
