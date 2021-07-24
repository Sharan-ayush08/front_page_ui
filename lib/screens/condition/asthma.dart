import 'package:flutter/material.dart';
import 'package:front_page_ui/models/conditions/asthma.dart';
import 'package:front_page_ui/providers/conditions/asthma_info.dart';

class ViewAsthmaList extends StatelessWidget {
  const ViewAsthmaList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Asthma> asthmaInfo = Asthmas.asthmaList;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text("Diseases & Conditions"),
      ),
      body: asthmaInfo.isEmpty
          ? Center(
              child: Text("No Diseases Found!!!"),
            )
          : ListView.builder(
              itemCount: asthmaInfo.length,
              itemBuilder: (BuildContext ctx, int index) {
                return InkWell(
                  child: Column(
                    children: <ListTile>[
                      ListTile(
                        title: Text(
                          asthmaInfo[index].item,
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
