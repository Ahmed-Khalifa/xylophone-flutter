import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
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
                      "Press the colored buttons below the way you like.",
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
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: RaisedButton(
                          color: Colors.red,
                          onPressed: (){
                            playNotes(1);
                          },
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: RaisedButton(
                          color: Colors.orange,
                          onPressed: (){
                            playNotes(2);
                          },
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: RaisedButton(
                          color: Colors.yellow,
                          onPressed: (){
                            playNotes(3);
                          },
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: RaisedButton(
                        color: Colors.green,
                        onPressed: (){
                          playNotes(4);
                        },
                    ),
                      ),),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: RaisedButton(
                          color: Colors.teal,
                          onPressed: (){
                            playNotes(5);
                          },
                        ),
                      ),
                    ),
                    Expanded(
                      child:
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: RaisedButton(
                        color: Colors.blue,
                        onPressed: (){
                          playNotes(6);
                        },
                    ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: RaisedButton(
                          color: Colors.purple,
                          onPressed: (){
                            playNotes(7);
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  void playNotes(int noteNumber) {
    final player = new AudioCache();
    player.play('note$noteNumber.wav');
  }
}
