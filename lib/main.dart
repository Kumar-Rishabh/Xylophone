import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playsound(int sn) {
    final Player = AudioCache();
    Player.play('note$sn.wav');
  }

  Expanded buildkey({int sn,Color color}){
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: color,
        ),
        onPressed: () {
          playsound(sn);
        }, child: null,
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
              buildkey(sn:1,color:Colors.red),
              buildkey(sn:2,color:Colors.orange),
              buildkey(sn:3,color:Colors.yellow),
              buildkey(sn:4,color:Colors.green),
              buildkey(sn:5,color:Colors.blue),
              buildkey(sn:6,color:Colors.indigo),
              buildkey(sn:7,color:Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
