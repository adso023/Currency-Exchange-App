import 'package:flutter/material.dart';

class CountryListSheet extends StatefulWidget {

  final countries = [
    {"name" : "Euro", "short" : "EUR"},
    {"name" : "US Dollar", "short" : "USD"},
    {"name" : "British Pound", "short" : "GBP"},
    {"name" : "Canadian Dollar", "short" : "CAD"},
    {"name" : "Australian Dollar", "short" : "AUD"}
  ];

  final Function(Map<String, String> country) onCountrySelected;

  CountryListSheet({this.onCountrySelected});

  @override
  createState() => _CountryListSheetState();
}

class _CountryListSheetState extends State<CountryListSheet> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Material(
      color: Colors.blue,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(10.0),
        topRight: Radius.circular(10.0)
      ),
      child: ListView(
        children: widget.countries.map<Widget>((e) {
          final country = e;
          return ListTile(
            title: Text(country["name"]),
            subtitle: Text(country["short"]),
            onTap: () {
              widget.onCountrySelected(country);
              Navigator.pop(context);
            },
          );
        }).toList(),
      ),
    );
  }
}