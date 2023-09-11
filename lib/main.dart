import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const SoundApp());
}

class SoundApp extends StatelessWidget {
  const SoundApp({super.key});

  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('mixkit-$soundNumber.wav'));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Sounds'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                color: Colors.purple[400],
                child: TextButton(
                  onPressed: () {
                    playSound(1);
                  },
                  child: const Text(''),
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.green,
                child: TextButton(
                  onPressed: () {
                    playSound(2);
                  },
                  child: const Text(''),
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.pink,
                child: TextButton(
                  onPressed: () {
                    playSound(3);
                  },
                  child: const Text(''),
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.orange,
                child: TextButton(
                  onPressed: () {
                    playSound(4);
                  },
                  child: const Text(''),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
