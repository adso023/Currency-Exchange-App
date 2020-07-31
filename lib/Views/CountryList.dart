import 'package:flutter/material.dart';
import 'package:currencyexchange_app/Data/CountryList.dart';

class CountryListSheet extends StatefulWidget {
  final Function(Map<String, String> country) onCountrySelected;
  final List<Map<String, String>> countries = CountryList().countries;

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
        shrinkWrap: true,
        children: widget.countries.map<Widget>((e) {
          final country = e;
          return ListTile(
            title: Text(country["Country"]),
            subtitle: Text(country["Name"]),
            trailing: Text(country["Code"]),
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

