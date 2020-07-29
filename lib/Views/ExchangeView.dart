
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

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            ConverterView(),
            KeyboardView()
          ],
        ),
      )
    );
  }
}