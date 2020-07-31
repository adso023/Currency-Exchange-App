import 'dart:convert';
import 'package:currencyexchange_app/Data/Exchange.dart';
import 'package:http/http.dart' as http;

class ExchangeApi {
  String _apiKey = "237eed2856d135b894c7"; //Add your api key here
  String _baseUrl = "https://free.currconv.com";

  Future<Exchange> fetchExchange(String code) async{
    final response = await http.get('');
    if(response.statusCode == 200) {
      return Exchange.fromJson(json.decode(response.body));
    } else {
      return Exchange(errorType: "unknown-code", result: "error");
    }
  }
}