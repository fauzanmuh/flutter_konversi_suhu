import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_konversi_suhu/widget/convert.dart';
import 'package:flutter_konversi_suhu/widget/input.dart';
import 'package:flutter_konversi_suhu/widget/result.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);


@override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController inputSuhuController = TextEditingController();

  // Dynamic variable
  double _inputUser = 0;
  double _kelvin = 0;
  double _reamur = 0;
  double _fahrenheit = 0;

  String _stringKelvin = '0.0';
  String _stringReamur = '0.0';
  String _stringFahrenheit = '0.0';

  void _temperatureConversion() {
    setState(() {
      _inputUser = double.parse(inputSuhuController.text);
      _kelvin = _inputUser + 273;
      _reamur = _inputUser * (4 / 5);
      _fahrenheit = _inputUser * (9 / 5) + 32;

      _stringKelvin = _kelvin.toStringAsFixed(1);
      _stringReamur = _reamur.toStringAsFixed(1);
      _stringFahrenheit = _fahrenheit.toStringAsFixed(1);
    });
  }

@override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Konversi Suhu'),
        ),
        body: Container(
          margin: const EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Input(inputSuhuController: inputSuhuController),
              Result(stringKelvin: _stringKelvin, stringReamur: _stringReamur, stringFahrenheit: _stringFahrenheit),
              Convert(convertHandler: _temperatureConversion,),
            ],
          ),
        ),
      ),
    );
  }
}