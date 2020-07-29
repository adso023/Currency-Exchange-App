
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
          mainAxisSize: MainAxisSize.min,
          children: [
            Center(child: Text('Currency Exchange'),),
            Container(
              margin: EdgeInsets.all(5.0),
              padding: EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black)
              ),
              child: Row(
                children: [
                  Text('USD'),
                  SizedBox(
                    width: MediaQuery.of(context).size.width - 100,
                    height: 20,
                    child: TextField(
                      autocorrect: false,
                      autofocus: false,
                      keyboardType: TextInputType.number,
                      onSubmitted: (str) {

                      },
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}