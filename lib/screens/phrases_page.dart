import 'package:flutter/material.dart';
import 'package:toku/models/phrases.dart';

import '../componentes/list_items.dart';

class phrasesPage extends StatelessWidget {
  phrasesPage({Key? key}) : super(key: key);

  final List<Phrase> phrases = [
    Phrase(
        enName: 'are you coming',
        jpName: 'Nammee wa nadeasu Ka',
        sound: 'assets/sounds/phrases/are_you_coming.wav'),
    Phrase(
        enName: 'dont forget to subscribe',
        jpName: 'Nammee wa nadeasu Ka',
        sound: 'assetssounds/phrases/dont_forget_to_subscribe.wav'),
    Phrase(
        enName: 'dont forget to subscribe',
        jpName: 'Nammee wa nadeasu Ka',
        sound: 'assets/sounds/phrases/how_are_you_feeling.wav'),
    Phrase(
        enName: 'where are you going',
        jpName: 'Nammee wa nadeasu Ka',
        sound: 'assets/sounds/phrases/i_love_anime.wav'),
    Phrase(
        enName: 'yes im coming',
        jpName: 'Nammee wa nadeasu Ka',
        sound: 'assets/sounds/phrases/i_love_programming.wav'),
    Phrase(
        enName: 'dont forget to subscribe',
        jpName: 'Nammee wa nadeasu Ka',
        sound: 'assets/sounds/phrases/programming_is_easy.wav'),
    Phrase(
        enName: 'yes im coming',
        jpName: 'Nammee wa nadeasu Ka',
        sound: 'assets/sounds/phrases/what_is_your_name.wav'),
    Phrase(
        enName: 'where are you going',
        jpName: 'Nammee wa nadeasu Ka',
        sound: 'assets/sounds/phrases/where_are_you_going.wav'),
    Phrase(
        enName: 'are you coming',
        jpName: 'Nammee wa nadeasu Ka',
        sound: 'assets/sounds/phrases/yes_im_coming.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Phrases'),
        backgroundColor: Colors.brown.shade800,
      ),
      body: ListView.builder(
        itemCount: phrases.length,
        itemBuilder: (context, index) {
          return PhraseItem(
            phrase: phrases[index],
            color: Colors.blueGrey,
            itemType: 'phrases',
          );
        },
      ),
    );
  }
}
