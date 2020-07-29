import 'package:flutter/material.dart';

class KeyboardView extends StatefulWidget {

  createState() => _KeyboardViewState();
}

class _KeyboardViewState extends State<KeyboardView> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: (MediaQuery.of(context).size.height / 2),
      width: MediaQuery.of(context).size.width,
      color: Color.fromRGBO(11, 57, 84, 1),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              createButton(1),
              createButton(2),
              createButton(3),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              createButton(4),
              createButton(5),
              createButton(6),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              createButton(7),
              createButton(8),
              createButton(9)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              createDecimal(),
              createButton(0),
              createBackspace(),
            ],
          ),
        ],
      ),
    );
  }

  Container createButton(int number) => Container(
    alignment: Alignment.center,
    padding: EdgeInsets.all(10),
    margin: EdgeInsets.all(5),
    width: (MediaQuery.of(context).size.width / 3) - 10,
    height: ((MediaQuery.of(context).size.height / 2) / 4) - 10,
    decoration: BoxDecoration(
      //color: Color.fromRGBO(10, 46, 54, 1),
      borderRadius: BorderRadius.all(Radius.circular(5.0))
    ),
    child: Text(number.toString(), style: TextStyle(color: Colors.white, fontSize: 30),),
  );

  Container createDecimal() => Container(
    alignment: Alignment.center,
    padding: EdgeInsets.all(10),
    margin: EdgeInsets.all(5),
    width: (MediaQuery.of(context).size.width / 3) - 10,
    height: ((MediaQuery.of(context).size.height / 2) / 4) - 10,
    decoration: BoxDecoration(
        //color: Color.fromRGBO(10, 46, 54, 1),
        borderRadius: BorderRadius.all(Radius.circular(5.0))
    ),
    child: Text('.', style: TextStyle(color: Colors.white, fontSize: 30),),
  );

  Container createBackspace() => Container(
    alignment: Alignment.center,
    padding: EdgeInsets.all(10),
    margin: EdgeInsets.all(5),
    width: (MediaQuery.of(context).size.width / 3) - 10,
    height: ((MediaQuery.of(context).size.height / 2) / 4) - 10,
    decoration: BoxDecoration(
        //color: Color.fromRGBO(10, 46, 54, 1),
        borderRadius: BorderRadius.all(Radius.circular(5.0))
    ),
    child: Text(String.fromCharCodes(Runes('\u232B')), style: TextStyle(color: Colors.white, fontSize: 30),),
  );
}