import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(MyApp());
}

void playSound(int note) {
  final player1 = AudioCache();
  player1.play('note$note.wav');
}

Expanded generate(int note, color) {
  return Expanded(
    child: TextButton(
      style: ButtonStyle(padding: MaterialStateProperty.all(EdgeInsets.zero)),
      onPressed: () {
        playSound(note);
      },
      child: Container(
        width: double.infinity,
        color: color,
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              generate(1, Colors.red),
              generate(2, Colors.orange),
              generate(3, Colors.yellow),
              generate(4, Colors.green),
              generate(5, Colors.lightBlue),
              generate(6, Colors.purple),
              generate(7, Colors.teal),
            ],
          ),
        ),
      ),
    );
  }
}
