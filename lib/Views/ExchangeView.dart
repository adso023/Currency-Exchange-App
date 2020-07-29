
import 'package:currencyexchange_app/Views/ConverterView.dart';
import 'package:currencyexchange_app/Views/KeyboardView.dart';
import 'package:flutter/material.dart';

class ExchangeView extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ExchangeViewState();
  }
}

class _ExchangeViewState extends State<ExchangeView> {
  TextEditingController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 50,
              child: ConverterView(controller: _controller,),
            ),
            Positioned(
              bottom: 0,
              child: KeyboardView(controller: _controller,),
            )
          ],
        ),
      )
    );
  }
}