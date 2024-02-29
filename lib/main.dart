import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

void buttons(int keys) {
  final player = AudioPlayer();
  player.play(AssetSource('note$keys.wav'));
}
Expanded buildkey(Color color, int key) {
  return Expanded(
    child: Container(
      color: color,
      child: TextButton(onPressed: () {
        buttons(key);
      },
        child:
        Text(""),
      ),
    ),
  );
}
class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(child:
        Center(child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildkey(Colors.red,1),
            buildkey(Colors.yellowAccent,2),
            buildkey(Colors.orange,3),
            buildkey(Colors.pinkAccent,4),
            buildkey(Colors.green,5),
            buildkey(Colors.blue,6),
            buildkey(Colors.purple,7),
          ],
        ),
        ),
        ),
      ),
    );
  }
}
