
import 'dart:math';

import 'package:flutter/material.dart';
void main(List<String> args) {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DicePage(),
    );
  }
}
class DicePage extends StatefulWidget {
  const DicePage({ Key? key }) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber=1;
  int rightDiceNumber=6;
  void diceChangeFace(){
    setState(() {
      leftDiceNumber=Random().nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text('DiceApp',style:TextStyle(
          color:Colors.white, fontSize: 30, fontWeight:FontWeight.bold,
        ),
        ),
        centerTitle: true,
        elevation: 30,
      ),
      body: Center(
        child: Row(
          children: [

            Expanded(
              child: FlatButton(
                onPressed: (){
                  diceChangeFace();
                },
                child: Image(
                  image: AssetImage('images/dice$leftDiceNumber.png'),
                ),
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: (){},
                child: Image(
                  image: AssetImage('images/dice2.png'),
                ),
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: (){},
                child: Image(
                  image: AssetImage('images/ludu.jpg'),
                ),
              ),
            ),
           //
          ],
        ),
      ),
    );
  }
}