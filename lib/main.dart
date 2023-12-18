import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  Future<void> playSound (int soundNumber) async {
    final player = AudioPlayer();
    await player.play(AssetSource('note$soundNumber.wav'));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(children: [
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.amberAccent
              ),
              onPressed: () async {
                playSound(1);
              },
              child: const Text('Tocar'),
            ),
            TextButton(
              style: TextButton.styleFrom(
                  backgroundColor: Colors.green
              ),
              onPressed: () async {
                playSound(2);
              },
              child: const Text('Tocar'),
            ),
            TextButton(
              style: TextButton.styleFrom(
                  backgroundColor: Colors.red
              ),
              onPressed: () async {
                playSound(3);
              },
              child: const Text('Tocar'),
            ),
            TextButton(
              style: TextButton.styleFrom(
                  backgroundColor: Colors.tealAccent
              ),
              onPressed: () async {
                playSound(4);
              },
              child: const Text('Tocar'),
            ),
            TextButton(
              style: TextButton.styleFrom(
                  backgroundColor: Colors.deepPurple
              ),
              onPressed: () async {
                playSound(5);
              },
              child: const Text('Tocar'),
            ),
            TextButton(
              style: TextButton.styleFrom(
                  backgroundColor: Colors.deepOrangeAccent
              ),
              onPressed: () async {
                playSound(6);
              },
              child: const Text('Tocar'),
            ),
            TextButton(
              style: TextButton.styleFrom(
                  backgroundColor: Colors.blue
              ),
              onPressed: () async {
                playSound(7);
              },
              child: const Text('Tocar'),
            ),
          ]),
        ),
      ),
    );
  }
}
