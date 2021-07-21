import 'package:flutter/material.dart';
import 'package:front_page_ui/providers/medicine_info.dart';
import 'package:front_page_ui/screens/front_page.dart';
import "package:provider/provider.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => Medicines(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Frontpage(),
      ),
    );
  }
}
