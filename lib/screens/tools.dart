import 'package:flutter/material.dart';
import 'package:front_page_ui/models/more.dart';
import 'package:front_page_ui/providers/tools_info.dart';

class ViewTools extends StatelessWidget {
  const ViewTools({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Tool> toolsInfo = Tools.toolItem;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          title: Text("Tools"),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.edit),
            ),
          ],
        ),
        body: toolsInfo.isEmpty
            ? Center(
                child: Text("No such Tools"),
              )
            : ListView.builder(
                itemCount: toolsInfo.length,
                itemBuilder: (BuildContext ctx, int index) {
                  return InkWell(
                    onTap: () {},
                    child: Column(
                      children: <Widget>[
                        ListTile(
                          leading: Text(
                            toolsInfo[index].tool,
                            style: TextStyle(fontSize: 20.0),
                          ),
                        )
                      ],
                    ),
                  );
                }));
  }
}
