import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';



void main() => runApp(const Xylophone());

class Xylophone extends StatelessWidget {
  const Xylophone({Key? key}) : super(key: key);

  void playSound(int soundNumber){
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded expandedKey(int soundNumber, Color color){
    return Expanded(
      child: ElevatedButton(
        onPressed: () {
          playSound(soundNumber);
        },
        child: const Text(''), style: ButtonStyle(backgroundColor: MaterialStateProperty.all(color), ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              expandedKey(1, Colors.red),
              expandedKey(2, Colors.orange),
              expandedKey(3, Colors.yellow),
              expandedKey(4, Colors.green),
              expandedKey(5, Colors.teal),
              expandedKey(6, Colors.blue),
              expandedKey(7, Colors.purple)
            ],
          ),
        ),
      ),
    );
  }
}
