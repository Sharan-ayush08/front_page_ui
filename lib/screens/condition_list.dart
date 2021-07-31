import 'package:flutter/material.dart';

class ConditionDetails extends StatelessWidget {
  final String title;
  final Map<String, dynamic>? condition;

  const ConditionDetails(
      {Key? key, required this.title, required this.condition})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final conditions = Provider.of<Allergies>(context).items;
    final List _points = List.generate(
        condition!.length, (index) => condition!.keys.toList()[index]);
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
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
          ],
        ),
      ),
    );
  }
}
