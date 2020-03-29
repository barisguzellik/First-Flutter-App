import 'dart:math';
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final wordPair=WordPair.random();
    final TextStyle _font=const TextStyle(fontSize:30);
    return MaterialApp(
      title: 'First Flutter App',
      home:Scaffold(
        appBar: AppBar(
          title: Text(wordPair.asPascalCase),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment:MainAxisAlignment.center,
            crossAxisAlignment:CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                wordPair.asPascalCase,
                style: _font
                ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: TextFormField(
                  decoration: const InputDecoration(
                  hintText:"Enter word!",
                  ) ,
                ),
              ),
              RaisedButton(
                onPressed: (){},
                child: Text("OK!",style: TextStyle(fontSize:20),),
              )
            ],
          ),
            
        ),
      ),
    );
  }
}

void _clickedButton(){

}
