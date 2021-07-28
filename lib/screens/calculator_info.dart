import 'package:flutter/material.dart';
import 'package:front_page_ui/models/calculators.dart';
import 'package:front_page_ui/providers/calculator_info.dart';

class ViewCalculators extends StatelessWidget {
  const ViewCalculators({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Calculator> calculatorInfo = Calculators.calcDesc;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text("Calculators"),
        actions: [Icon(Icons.search)],
      ),
      body: calculatorInfo.isEmpty
          ? Center(
              child: Text("Searching.."),
            )
          : ListView.builder(
              itemCount: calculatorInfo.length,
              itemBuilder: (BuildContext ctx, int index) {
                return InkWell(
                  onTap: () {},
                  child: Column(
                    children: <ListTile>[
                      ListTile(
                          title: Text(
                            calculatorInfo[index].calculator,
                            style: TextStyle(fontSize: 20.0),
                          ),
                          leading: Icon(Icons.arrow_forward_rounded))
                    ],
                  ),
                );
              },
            ),
    );
  }
}
