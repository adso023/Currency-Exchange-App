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
      decoration: BoxDecoration(
        border: Border.all(color: Colors.orange)
      ),
      child: FlatButton(onPressed: (){}, child: Text('World')),
    );
  }
}