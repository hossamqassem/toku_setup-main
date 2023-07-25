
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold
    (

      body:  Center(
        child: IconButton(
          onPressed: () {
                AudioCache player =AudioCache(prefix:'assets/sounds/family_members/');
          player.play("father.wav");
          },
           icon: Icon(
            Icons.play_arrow,
            size: 100,
           ),
           ),
      ),
    );
  }
}