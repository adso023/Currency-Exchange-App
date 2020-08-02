import 'package:flutter/material.dart';

class KeyboardView extends StatefulWidget {

  final TextEditingController controller;

  KeyboardView({this.controller});

  createState() => _KeyboardViewState();
}

class _KeyboardViewState extends State<KeyboardView> {

  void addToInput(String num) => (widget.controller.text.length < 15) ? widget.controller.text += num : "";

  void backspace() => widget.controller.text = widget.controller.text.isEmpty ? "" : widget.controller.text.substring(0, widget.controller.text.length-1);

  void decimal() => !widget.controller.text.contains(".") && widget.controller.text.length < 15 ? widget.controller.text += "." : "";

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
              GestureDetector(
                child: createButton(1),
                onTap: () => addToInput("1"),
              ),
              GestureDetector(
                child: createButton(2),
                onTap: () => addToInput("2"),
              ),
              GestureDetector(
                child: createButton(3),
                onTap: () => addToInput("3"),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                child: createButton(4),
                onTap: () => addToInput("4"),
              ),
              GestureDetector(
                child: createButton(5),
                onTap: () => addToInput("5"),
              ),
              GestureDetector(
                child: createButton(6),
                onTap: () => addToInput("6"),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                child: createButton(7),
                onTap: () => addToInput("7"),
              ),
              GestureDetector(
                child: createButton(8),
                onTap: () => addToInput("8"),
              ),
              GestureDetector(
                child: createButton(9),
                onTap: () => addToInput("9"),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                child: createDecimal(),
                onTap: () => decimal(),
              ),
              GestureDetector(
                child: createButton(0),
                onTap: () => addToInput("0"),
              ),
              GestureDetector(
                child: createBackspace(),
                onTap: () => backspace(),
                onLongPress: () {
                  widget.controller.text = "";
                },
              ),
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
    child: Text(number.toString(), style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.w600),),
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
    child: Text('.', style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.w600),),
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
    child: Text(String.fromCharCodes(Runes('\u232B')), style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.w500),),
  );
}