import 'package:flutter/material.dart';

import '../componentes/list_items.dart';
import '../models/item.dart';

class ColorsPage extends StatelessWidget {
   ColorsPage({Key? key}) : super(key: key);
  final List<Item> colors = [
    Item(
      image: 'assets/images/colors/color_black.png',
      jpName: 'ichi',
      enName: 'one',
      sound: 'assets/sounds/family_members/father.wav',
    ),
    Item(
      image: 'assets/images/colors/color_brown.png',
      jpName: 'Ni',
      enName: 'two',
      sound: 'assets/sounds/family_members/mother.wav',
    ),
    Item(
      image: 'assets/images/colors/color_dusty_yellow.png',
      jpName: 'San',
      enName: 'three',
      sound: 'assets/sounds/family_members/daughter.wav',
    ),
    Item(
      image: 'assets/images/colors/color_gray.png',
      jpName: 'Shi',
      enName: 'four',
      sound: 'assets/sounds/family_members/grand father.wav',
    ),
    Item(
      image: 'assets/images/colors/color_green.png',
      jpName: 'Go',
      enName: 'five',
      sound: 'assets/sounds/family_members/grand mother.wav',
    ),
    Item(
      image: 'assets/images/colors/color_red.png',
      jpName: 'Roku',
      enName: 'six',
      sound: 'assets/sounds/family_members/older brother.wav',
    ),
    Item(
      image: 'assets/images/colors/color_white.png',
      jpName: 'Sebun',
      enName: 'seven',
      sound: 'assets/sounds/family_members/older sister.wav',
    ),
    Item(
      image: 'assets/images/colors/yellow.png',
      jpName: 'hachi',
      enName: 'eight',
      sound: 'assets/sounds/family_members/son.wav',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: const Text('Colors'),
        backgroundColor: Colors.brown.shade800,
      ),
      body: ListView.builder(
        itemCount: colors.length,
        itemBuilder: (context, index) {
          return ListItem(
            number: colors[index],
            color:Colors.blue,
             itemType: 'colors',
          );
        },
      ),
    );
  }
}