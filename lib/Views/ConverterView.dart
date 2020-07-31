import 'package:currencyexchange_app/Data/Exchange.dart';
import 'package:currencyexchange_app/Data/ExchangeApi.dart';
import 'package:flutter/material.dart';
import 'package:currencyexchange_app/Views/CountryList.dart';

class ConverterView extends StatefulWidget {

  final TextEditingController controller;
  final ExchangeApi exchangeApi;

  ConverterView({this.controller}) : exchangeApi = ExchangeApi();

  createState() => _ConverterViewState();
}

class _ConverterViewState extends State<ConverterView> {

  Map<String, String> _from;
  Map<String, String> _to;
  Exchange _exchange;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _from = {"Code": "USD","Name": "United States Dollar","Country": "United States"};
    _to = {"Code": "CAD","Name": "Canadian Dollar","Country": "Canada"};
    widget.exchangeApi.fetchExchange(_from["Code"]).then((value) => _exchange = value);
  }

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
                  Material(
                    color: Colors.red,
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    child: FlatButton(
                      onPressed: () async {
                        await showModalBottomSheet(
                          context: context,
                          backgroundColor: Color(0xFF737373),
                          builder: (context) => CountryListSheet(onCountrySelected: (country) async{
                            _from = country;
                            _exchange = await widget.exchangeApi.fetchExchange(_from["Code"]);
                            print(_exchange);
                          },)
                        );

                        setState(() {print(_from);});
                      },
                      child: Text('${_from["Code"]}')
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
                    child: SizedBox(
                      width: 200,
                      child: TextField(
                        controller: widget.controller,
                        showCursor: false,
                        readOnly: true,
                        autofocus: false,
                        autocorrect: false,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 0.0)
                        ),
                        onChanged: (value) {

                        },
                      ),
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
              onTap: (){
                print('Hit the switcher button');
              },
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
                  Material(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    color: Colors.orange,
                    child: FlatButton(
                      onPressed: () async{
                        await showModalBottomSheet(
                          context: context,
                          backgroundColor: Color(0xFF737373),
                          builder: (context) => CountryListSheet(onCountrySelected: (country) {
                            _to = country;
                          },)
                        );
                        setState(() {print(_to);});
                      },
                      child: Text('${_to["Code"]}')
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
                    child: SizedBox(
                      width: 200,
                      child: TextField(
                        showCursor: false,
                        autofocus: false,
                        autocorrect: false,
                        readOnly: true,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 0.0),
                        ),
                        onChanged: (value) {

                        },
                      ),
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