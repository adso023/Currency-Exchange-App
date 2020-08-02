import 'package:currencyexchange_app/Data/Exchange.dart';
import 'package:currencyexchange_app/Data/ExchangeApi.dart';
import 'package:flutter/material.dart';
import 'package:currencyexchange_app/Views/CountryList.dart';

class ConverterView extends StatefulWidget {

  final TextEditingController fromController;
  final TextEditingController toController;
  final ExchangeApi exchangeApi;

  ConverterView({this.fromController, this.toController}) : exchangeApi = ExchangeApi();

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

    widget.fromController.addListener(updateFromTo);
    widget.toController.addListener(() { });
  }

  void updateFromTo() {
    widget.fromController.selection = TextSelection.fromPosition(TextPosition(offset: widget.fromController.text.length));
    if(widget.fromController.text.isNotEmpty) {
      double rate = _exchange.getExchangeRate(_to["Code"]);
      double convert = rate * (double.tryParse(widget.fromController.text) ?? 0);
      widget.toController.text = convert.toString();
    } else {
      widget.toController.text = widget.fromController.text;
    }
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
                  MaterialButton(
                    height: 50.0,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5.0)),side: BorderSide(color: Colors.red[300], width: 2.0, style: BorderStyle.solid)),
                    textTheme: ButtonTextTheme.accent,
                    onPressed: () async {
                      await showModalBottomSheet(
                          context: context,
                          backgroundColor: Color(0xFF737373),
                          builder: (context) => CountryListSheet(onCountrySelected: (country) async{
                            _from = country;
                            _exchange = await widget.exchangeApi.fetchExchange(_from["Code"]);
                            updateFromTo();
                          },)
                      );

                      setState(() {print(_from);});
                    },
                    child: Text('${_from["Code"]}', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600, letterSpacing: 2.5,),)
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
                    child: SizedBox(
                      width: 200,
                      child: TextField(
                        controller: widget.fromController,
                        showCursor: true,
                        readOnly: true,
                        autofocus: false,
                        autocorrect: false,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 0.0),
                        ),
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600,
                        ),
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
              child: Icon(Icons.swap_vert, size: 48.0, color: Colors.indigo),
              onTap: () async{
                print('Hit the switcher button');
                var tmp = _from;
                _from = _to;
                _to = tmp;
                _exchange = await widget.exchangeApi.fetchExchange(_from["Code"]);

                setState(() {
                  updateFromTo();
                });
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
                  MaterialButton(
                    height: 50.0,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5.0)),side: BorderSide(color: Colors.orange[300], width: 2.0, style: BorderStyle.solid)),
                    textTheme: ButtonTextTheme.accent,
                    onPressed: () async{
                      await showModalBottomSheet(
                          context: context,
                          backgroundColor: Color(0xFF737373),
                          builder: (context) => CountryListSheet(onCountrySelected: (country) {
                            _to = country;
                            updateFromTo();
                          },)
                      );
                      setState(() {print(_to);});
                    },
                    child: Text('${_to["Code"]}', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600, letterSpacing: 2.5),)
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
                    child: SizedBox(
                      width: 200,
                      child: TextField(
                        controller: widget.toController,
                        showCursor: false,
                        autofocus: false,
                        autocorrect: false,
                        readOnly: true,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 0.0),
                        ),
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600,
                        ),
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