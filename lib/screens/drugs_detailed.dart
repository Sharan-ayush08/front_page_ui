import 'dart:ui';

import 'package:flutter/material.dart';

class DrugDetails extends StatelessWidget {
  const DrugDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> _items = [
      'Dosage & Indication',
      'Interaction',
      'Adverse Effects',
      'Warnings',
      'Pregnancy',
      'Pharmacology',
      'Images',
      'Formulary',
    ];
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text("abatacept"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.save),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.share),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Card(
              child: ListTile(
                title: Text("abatacept(Rx)"),
                subtitle: Text('Orenica, Orenica Clickjet'),
              ),
            ),
          ),
          Card(
            child: InkWell(
              onTap: () {},
              child: ListTile(
                  title: Text(
                    "Medscape Health Directory",
                    style: TextStyle(fontSize: 15.0),
                  ),
                  subtitle:
                      Text("Need to make a referral? Serach by specialty."),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    size: 15.0,
                  )),
            ),
          ),
          Expanded(
            child: Card(
              child: ListView.builder(
                  itemCount: _items.length,
                  itemBuilder: (BuildContext ctx, int index) {
                    return Column(children: [
                      ListTile(
                        leading: Text(
                          _items[index],
                          style: TextStyle(fontSize: 18.0),
                        ),
                      )
                    ]);
                  }),
            ),
          )
        ],
      ),
    );
  }
}
