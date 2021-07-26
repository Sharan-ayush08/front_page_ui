import 'package:flutter/material.dart';
import 'package:front_page_ui/providers/conditions/allergy_info.dart';
import 'package:front_page_ui/providers/medicine_info.dart';
import 'package:provider/provider.dart';

class AllergyDetails extends StatelessWidget {
  final allergy;
  const AllergyDetails({Key? key, required this.allergy}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _allergyname = Provider.of<Allergies>(context).items;
    final List<String> _points = _allergyname[allergy]!.keys.toList();
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text(allergy),
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
              child: Card(
                child: ListTile(
                  title: Text(
                    allergy,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  // subtitle: Text('Orenica, Orenica Clickjet'),
                ),
              ),
            ),
            // Card(
            //   child: ListTile(
            //       onTap: () {},
            //       title: Text(
            //         "Health Directory",
            //         style: TextStyle(fontSize: 15.0),
            //       ),
            //       subtitle:
            //           Text("Need to make a referral? Serach by specialty."),
            //       trailing: Icon(
            //         Icons.arrow_forward,
            //         size: 15.0,
            //       )),
            // ),
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
