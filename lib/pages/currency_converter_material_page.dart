import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatelessWidget {
  const CurrencyConverterMaterialPage({super.key});

  @override
  Widget build(BuildContext context) {
    const Color input = Colors.black87;
    final OutlineInputBorder border = OutlineInputBorder(
      borderSide: const BorderSide(
        color: Colors.red,
        width: 2.0,
      ),
      borderRadius: BorderRadius.circular(40.0),
    );
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(10),
              color: Colors.black,
              child: const Text(
                "Hello World!",
                style: TextStyle(
                  fontSize: 55,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                keyboardType:
                    const TextInputType.numberWithOptions(decimal: true),
                style: const TextStyle(
                  color: Colors.white,
                ),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "Enter currency to be converted in USD",
                  hintStyle: const TextStyle(color: input),
                  prefixIcon: const Icon(
                    Icons.monetization_on,
                  ),
                  prefixIconColor: input,
                  focusedBorder: border,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
