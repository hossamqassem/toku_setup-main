import 'package:flutter/material.dart';
import 'package:toku/screens/home_page.dart';
void main() {
  runApp(const Tokuapp());
}

class Tokuapp extends StatelessWidget {
  const Tokuapp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:const HomePage(),
    );
  }
}
 