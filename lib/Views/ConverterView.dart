import 'package:flutter/material.dart';

class ConverterView extends StatefulWidget {

  createState() => _ConverterViewState();
}

class _ConverterViewState extends State<ConverterView> {

  TextEditingController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _controller = TextEditingController(text: "0");
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      alignment: Alignment.center,
      height: (MediaQuery.of(context).size.height / 2) - 30,
      width: MediaQuery.of(context).size.width,
      color: Colors.blueAccent,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 25,
            child: Material(
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
              elevation: 10.0,
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    FlatButton(onPressed: (){}, child: Text('EUR')),
                    SizedBox(
                      width: 200,
                      child: TextField(
                        controller: _controller,
                        showCursor: false,
                        readOnly: true,
                        autofocus: false,
                        autocorrect: false,
                        keyboardType: TextInputType.number,
                      ),
                    ),
                  ],
                ),
              )
            )
          ),
          Positioned(
            top: (((MediaQuery.of(context).size.height / 2) - 30) / 2) - 30,
            left: (MediaQuery.of(context).size.width / 2) - 35,
            child: GestureDetector(
              child: Icon(Icons.swap_vertical_circle, size: 48.0, color: Colors.indigo[100],),
              onTap: (){},
            )
          ),
          Positioned(
            bottom: 35,
            child: Material(
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
              elevation: 10.0,
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    FlatButton(onPressed: (){}, child: Text('GBP')),
                    SizedBox(
                      width: 200,
                      child: TextField(
                        autofocus: false,
                        autocorrect: false,
                        keyboardType: TextInputType.number,
                        readOnly: true,
                      ),
                    ),
                  ],
                ),
              ),
            )
          )
        ],
      )
    );
  }
}

//Stack(
//alignment: Alignment.center,
//children: [
//Positioned(
//top: 10,
//child: Container(
//padding: EdgeInsets.all(5.0),
//child: Row(
//children: [
//FlatButton(onPressed: (){}, child: Text('EUR')),
//Expanded(child: TextField(
//autocorrect: false,
//autofocus: false,
//keyboardType: TextInputType.number,
//))
//],
//),
//),
//),
//Positioned(
//bottom: 40,
//child: IconButton(
//icon: Icon(Icons.swap_horizontal_circle),
//onPressed: (){},
//),
//
//),
//Positioned(
//bottom: 10,
//child: Container(
//child: Row(
//mainAxisSize: MainAxisSize.min,
//children: [
//FlatButton(
//padding: EdgeInsets.all(10.0),
//onPressed: (){},
//child: Text('GBP'),
//),
//SizedBox(
//width: MediaQuery.of(context).size.width - 100,
//child: TextField(
//autocorrect: false,
//autofocus: false,
//),
//)
//],
//),
//),
//),
//],
//)