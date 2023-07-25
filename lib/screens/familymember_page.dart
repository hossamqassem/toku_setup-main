import 'package:flutter/material.dart';
import 'package:toku/componentes/list_items.dart';

import '../models/item.dart';

class FamilyMember extends StatelessWidget {
  FamilyMember({Key? key}) : super(key: key);
  final List<Item> familyMembers = [
    Item(
      image: 'assets/images/family_members/family_father.png',
      jpName: 'ichi',
      enName: 'one',
      sound: 'assets/sounds/family_members/father.wav',
    ),
    Item(
      image: 'assets/images/family_members/family_mother.png',
      jpName: 'Ni',
      enName: 'two',
      sound: 'assets/sounds/family_members/mother.wav',
    ),
    Item(
      image: 'assets/images/family_members/family_daughter.png',
      jpName: 'San',
      enName: 'three',
      sound: 'assets/sounds/family_members/daughter.wav',
    ),
    Item(
      image: 'assets/images/family_members/family_grandfather.png',
      jpName: 'Shi',
      enName: 'four',
      sound: 'assets/sounds/family_members/grand father.wav',
    ),
    Item(
      image: 'assets/images/family_members/family_grandmother.png',
      jpName: 'Go',
      enName: 'five',
      sound: 'assets/sounds/family_members/grand mother.wav',
    ),
    Item(
      image: 'assets/images/family_members/family_older_brother.png',
      jpName: 'Roku',
      enName: 'six',
      sound: 'assets/sounds/family_members/older brother.wav',
    ),
    Item(
      image: 'assets/images/family_members/family_older_sister.png',
      jpName: 'Sebun',
      enName: 'seven',
      sound: 'assets/sounds/family_members/older sister.wav',
    ),
    Item(
      image: 'assets/images/family_members/family_son.png',
      jpName: 'hachi',
      enName: 'eight',
      sound: 'assets/sounds/family_members/son.wav',
    ),
    Item(
      image: 'assets/images/family_members/family_younger_brother.png',
      jpName: 'Kyu',
      enName: 'nine',
      sound: 'assets/sounds/family_members/younger brother.wav',
    ),
    Item(
      image: 'assets/images/family_members/family_younger_sister.png',
      jpName: 'Ju',
      enName: 'ten',
      sound: 'assets/sounds/family_members/younger sister.wav',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Family Members'),
        backgroundColor: Colors.brown.shade800,
      ),
      body: ListView.builder(
        itemCount: familyMembers.length,
        itemBuilder: (context, index) {
          return ListItem(
            number: familyMembers[index],
            color: Colors.green,
             itemType: 'family_members',
          );
        },
      ),
    );
  }
}
