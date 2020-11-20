import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playNotes(int noteNumber) {
    final player = new AudioCache();
    player.play('note$noteNumber.wav');
  }

  Widget buildKey(MaterialColor buttonColor,int noteNumber) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: RaisedButton(
          color: buttonColor,
          onPressed: (){
            playNotes(noteNumber);
          },
        ),
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
            children: [
              Expanded(
                flex: 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Be Creative...",
                      style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Ubuntu',
                      fontWeight: FontWeight.bold,
                      fontSize: 60.0,
                    ),),
                    Text(
                      "Press the colored buttons below and enjoy.",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Ubuntu',
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0,
                    ),),
                ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    buildKey(Colors.red, 1),
                    buildKey(Colors.orange, 2),
                    buildKey(Colors.yellow, 3),
                    buildKey(Colors.green, 4),
                    buildKey(Colors.teal, 5),
                    buildKey(Colors.blue, 6),
                    buildKey(Colors.purple, 7),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}
