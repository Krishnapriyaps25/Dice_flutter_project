import 'package:flutter/material.dart';
import 'dart:math';
void main(){
  runApp(
    MaterialApp(
      home:Scaffold(
        backgroundColor:Colors.pink.shade100,
        appBar: AppBar(
          backgroundColor:Colors.pink.shade900,
          title: Center(
            child: Text('Lets Roll...🦩',
            style:TextStyle(
              fontSize:25,
              fontFamily:'HennyPenny',
              color:Colors.white
            )),
          ),
        ),
        body:Roll(),
      )
    )
  );
}
class Roll extends StatefulWidget {
  const Roll({Key?key}):super(key:key);
  @override
  State<Roll> createState() => _RollState();
}
class _RollState extends State<Roll> {
  int diceNumber=1;
  void rollDice(){
    setState(() {
      print('$diceNumber button pressed');
      diceNumber=Random().nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment:MainAxisAlignment.center,
      children: [
        Container(
          height:150,
          width:150,
          child:TextButton(style:TextButton.styleFrom(
            foregroundColor:Colors.pink.shade100,
          ),
            onPressed: rollDice,
              child: Image.asset('images/dice$diceNumber.png'),
          )
        )
      ],
      ),
    );
  }
}
