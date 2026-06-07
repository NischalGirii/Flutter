import 'dart:convert';

import 'package:http/http.dart' as http;
class ExchangeRateServiceApi{
  Future<double> getExchangeRate(
    String fromCurrency,
    String toCurrency
  ) async{
    final url ='https://open.er-api.com/v6/latest/$fromCurrency';
    final response = await http.get(Uri.parse(url));

    if(response.statusCode != 200){
      throw Exception('Failed to load currency rate.');
    }
    final data = jsonDecode(response.body);
    return data['rates'][toCurrency].toDouble();
  }
}