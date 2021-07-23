import 'package:flutter/material.dart';
import 'package:front_page_ui/providers/medicine_info.dart';
import 'package:front_page_ui/providers/procedure_detailed/anatomy.dart';
import 'package:provider/provider.dart';

class AnatomyDetails extends StatelessWidget {
  final anatomy;
  const AnatomyDetails({Key? key, this.anatomy}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    final _anatomy_items = Provider.of<Anatomy>(context).items;
    final List<String> _points = _anatomy_items[anatomy]!.keys.toList();
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text(anatomy),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.save),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Container(
                child: Column(
                  children: [
                    ListTile(
                      title: Text(
                        anatomy,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      // subtitle: Text('Orenica, Orenica Clickjet'),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: _points.length,
                itemBuilder: (BuildContext ctx, int index) {
                  return ListTile(
                    onTap: () {},
                    leading: Text(
                      _points[index],
                      style: TextStyle(fontSize: 18.0),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
