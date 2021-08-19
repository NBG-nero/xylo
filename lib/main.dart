import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key key}) : super(key: key);

  Future playSound(int soundNum) async {
    final player = AudioCache();
    player.play('note$soundNum.wav');
  }

  Widget buildKey({int soundNumber, MaterialColor color}) {
    return Expanded(
      child: MaterialButton(
        elevation: 10,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        color: color,
        onPressed: () => playSound(soundNumber),
      ),

    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildKey(soundNumber: 1, color: Colors.red),
                SizedBox(height: 5),
                buildKey(soundNumber: 2, color: Colors.orange),
                SizedBox(height: 5),
                buildKey(soundNumber: 3, color: Colors.yellow),
                SizedBox(height: 5),
                buildKey(soundNumber: 4, color: Colors.green),
                SizedBox(height: 5),
                buildKey(soundNumber: 5, color: Colors.teal),
                SizedBox(height: 5),
                buildKey(soundNumber: 6, color: Colors.blue),
                SizedBox(height: 5),
                buildKey(soundNumber: 7, color: Colors.purple),
                SizedBox(height: 5),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
