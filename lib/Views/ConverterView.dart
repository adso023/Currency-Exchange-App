import 'package:flutter/material.dart';

class ConverterView extends StatefulWidget {

  final TextEditingController controller;

  ConverterView({this.controller});

  createState() => _ConverterViewState();
}

class _ConverterViewState extends State<ConverterView> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Material(
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
                      controller: widget.controller,
                      showCursor: false,
                      readOnly: true,
                      autofocus: false,
                      autocorrect: false,
                      keyboardType: TextInputType.number,
                      onChanged: (value) {

                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10.0),
            child: GestureDetector(
              child: Icon(Icons.swap_vertical_circle, size: 48.0, color: Colors.indigo,),
              onTap: (){},
            )
          ),
          Material(
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
            elevation: 10.0,
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  FlatButton(onPressed: (){}, child: Text('USA')),
                  SizedBox(
                    width: 200,
                    child: TextField(
                      showCursor: false,
                      autofocus: false,
                      autocorrect: false,
                      readOnly: true,
                      keyboardType: TextInputType.number,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      )
    );
  }
}

//Stack(
//        alignment: Alignment.center,
//        children: [
//          Positioned(
//            top: 10,
//            child: Material(
//              borderRadius: BorderRadius.all(Radius.circular(5.0)),
//              elevation: 10.0,
//              child: Padding(
//                padding: EdgeInsets.all(10.0),
//                child: Row(
//                  mainAxisSize: MainAxisSize.min,
//                  children: [
//                    FlatButton(onPressed: (){}, child: Text('EUR')),
//                    SizedBox(
//                      width: 200,
//                      child: TextField(
//                        controller: _controller,
//                        showCursor: false,
//                        readOnly: true,
//                        autofocus: false,
//                        autocorrect: false,
//                        keyboardType: TextInputType.number,
//                      ),
//                    ),
//                  ],
//                ),
//              )
//            )
//          ),
//          Positioned(
//            top: (((MediaQuery.of(context).size.height / 2) - 30) / 2) / 2,
//            left: (MediaQuery.of(context).size.width / 2) - 35,
//            child: GestureDetector(
//              child: Icon(Icons.swap_vertical_circle, size: 48.0, color: Colors.indigo,),
//              onTap: (){},
//            )
//          ),
//          Positioned(
//            top: 150,
//            child: Material(
//              borderRadius: BorderRadius.all(Radius.circular(5.0)),
//              elevation: 10.0,
//              child: Padding(
//                padding: EdgeInsets.all(10.0),
//                child: Row(
//                  mainAxisSize: MainAxisSize.min,
//                  children: [
//                    FlatButton(onPressed: (){}, child: Text('GBP')),
//                    SizedBox(
//                      width: 200,
//                      child: TextField(
//                        showCursor: false,
//                        autofocus: false,
//                        autocorrect: false,
//                        readOnly: true,
//                        keyboardType: TextInputType.number,
//                      ),
//                    ),
//                  ],
//                ),
//              ),
//            )
//          )
//        ],
//      )