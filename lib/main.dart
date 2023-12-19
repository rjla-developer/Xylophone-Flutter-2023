import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  Future<void> playSound(int soundNumber) async {
    final player = AudioPlayer();
    await player.play(AssetSource('note$soundNumber.wav'));
  }

  Expanded keyPiano({int numberAudio = 1, Color colorAudio = Colors.black}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: colorAudio,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0),
          ),
        ),
        onPressed: () async {
          playSound(numberAudio);
        },
        child: Container(),
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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              keyPiano(numberAudio: 1, colorAudio: Colors.amberAccent),
              keyPiano(numberAudio: 2, colorAudio: Colors.green),
              keyPiano(numberAudio: 3, colorAudio: Colors.red),
              keyPiano(numberAudio: 4, colorAudio: Colors.tealAccent),
              keyPiano(numberAudio: 5, colorAudio: Colors.deepPurple),
              keyPiano(numberAudio: 6, colorAudio: Colors.deepOrangeAccent),
              keyPiano(numberAudio: 7, colorAudio: Colors.blue),
            ],
          ),
        ),
      ),
    );
  }
}
