import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku/models/item.dart';
import 'package:toku/models/phrases.dart';

class ListItem extends StatelessWidget {
   const ListItem({Key? key, required this.number, required this.color, required this.itemType}) : super(key: key);
  final Item number;
  final Color color;
  final String itemType;
    @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          Container(color: Colors.amber[100], child: Image.asset(number.image)),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  number.jpName,
                  style: const TextStyle(fontSize: 17, color: Colors.white),
                ),
                Text(
                  number.enName,
                  style: const TextStyle(fontSize: 17, color: Colors.white),
                ),
              ],
            ),
          ),
          const Spacer(flex: 1),
          IconButton(onPressed: 
          () {
          try{
          
              AudioCache player =AudioCache(prefix:'asset/sounds/$itemType/');
            player.play(number.sound);
          
          }catch(ex){
            print('ex');
          }


          }, 
          icon: const Icon(Icons.play_arrow,color: Colors.white,size: 28,)),
        ],
      ),
    );
  }
}








class PhraseItem extends StatelessWidget {
    const PhraseItem({Key? key, required this.phrase, required this.color, required this.itemType}) : super(key: key);
  final Phrase phrase;
  final Color color;
  final String itemType;
    @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  phrase.jpName,
                  style: const TextStyle(fontSize: 17, color: Colors.white),
                ),
                Text(
                  phrase.enName,
                  style: const TextStyle(fontSize: 17, color: Colors.white),
                ),
              ],
            ),
          ),
          const Spacer(flex: 1),
          IconButton(onPressed: 
          () {
          try{
          
              AudioCache player =AudioCache(prefix:'asset/sounds/$itemType/');
            player.play(phrase.sound);
          
          }catch(ex){
            print('ex');
          }


          }, 
          icon: const Icon(Icons.play_arrow,color: Colors.white,size: 28,)),
        ],
      ),
    );
  }
}

