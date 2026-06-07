import 'package:flutter/material.dart';
import 'package:weather_app/exchange_rate_service_api.dart';

class ExchangeRateService extends StatefulWidget {
  const ExchangeRateService({super.key});

  @override
  State<ExchangeRateService> createState() => _ExchangeRateServiceState();
}

class _ExchangeRateServiceState extends State<ExchangeRateService> {

  final service= ExchangeRateServiceApi();

  final amountController = TextEditingController();
  String fromCurrency = 'USD';
  String toCurrency = 'NPR';
  


  double? convertedAmount;

  Future<void> convertCurrency() async {
    final amount = double.tryParse(amountController.text);
    if(amount == null) return;

    final rate = await service.getExchangeRate(fromCurrency, toCurrency);

    setState(() {
      convertedAmount = rate * amount;
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          SizedBox(height: 40,),
          TextField(
            controller: amountController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              hintText: 'Enter the amount to exchange'
            ),
            
          ),

          DropdownButton(hint: Text("From Currency"),
          value: fromCurrency,
          items: const[
            DropdownMenuItem(value: 'USD',child: Text("USD") ),
            DropdownMenuItem(value: 'NPR',child: Text("NPR")),
            DropdownMenuItem(value: 'INR',child: Text('INR')),
            DropdownMenuItem(value:'EUR', child: Text('EUR'), ),
          ], onChanged: (value) {
            setState(() {
              fromCurrency = value!;
            });
          }),
          SizedBox(height: 100,),
           DropdownButton(hint: Text("To Currency"),
           value: toCurrency,
           items: const[
            DropdownMenuItem(value: 'USD',child: Text("USD") ),
            DropdownMenuItem(value: 'NPR',child: Text("NPR")),
            DropdownMenuItem(value: 'INR',child: Text('INR')),
            DropdownMenuItem(value:'EUR', child: Text('EUR'), ),
          ], onChanged: (value) {
            setState(() {
              toCurrency = value!;
            });
          }),
          SizedBox(height: 40,),
          ElevatedButton(onPressed: () {
            convertCurrency();
          }, child: Text("Currency Conversion")),

          Text('Converted Amount = ${convertedAmount.toString()}')
        ],
      ),
    );
  }
}