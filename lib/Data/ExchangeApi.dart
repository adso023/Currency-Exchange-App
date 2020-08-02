import 'dart:convert';
import 'package:currencyexchange_app/Data/Exchange.dart';
import 'package:http/http.dart' as http;

class ExchangeApi {
//  String _apiKey = "f7a34529f20d7fe7b112"; //Add your api key here
//  String _baseUrl = "https://free.currconv.com";

  Future<Exchange> fetchExchange(String code) async{
    final response = await http.get('https://api.exchangeratesapi.io/latest?base=$code');
    if(response.statusCode == 200) {
      return Exchange.fromJson(json.decode(response.body));
    } else {
      return Exchange(error: "Something");
    }
  }
}