import 'package:flutter/material.dart';
import 'package:toku/screens/colors_page.dart';
import 'package:toku/screens/familymember_page.dart';
import 'package:toku/screens/number_page.dart';
import 'package:toku/screens/phrases_page.dart';

import '../componentes/catgory_items.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: Colors.brown[50],
        appBar:AppBar(
          backgroundColor: Colors.brown.shade800,
          title: const Text('Toku'),
        ),
        body: Column(
          children: [
             Catgory(
            text: ' Number',
            color: Colors.grey, onTap: () { 
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                return NumberPage();
              }));
             },
           ),
           Catgory(
            text: 'Family Members',
            color: Colors.green, onTap: () { 
               Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                return  FamilyMember();
              }));
             },
           ),
            Catgory(
            text: 'Colors',
            color: Colors.blue[100], onTap: () { 
               Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                return  ColorsPage();
              }));
             }, 
           ),
            Catgory(
            text: 'Phrases',
            color: Colors.blueGrey, onTap: () { 
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                return  phrasesPage();
              }));
             }, 
           ),
             
          ],
        ),
    );
  }
}
