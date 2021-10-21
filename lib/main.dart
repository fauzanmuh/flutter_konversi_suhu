import 'package:flutter/material.dart';
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
  double _result = 0;

  String _newValue = "Kelvin";

  var listItem = ["Kelvin", "Reamur", "Fahrenheit"];

  void _temperatureConversion() {
    setState(() {
      _inputUser = double.parse(inputSuhuController.text);
      if (_newValue == "Kelvin") {
        _result = _inputUser + 273;
      }
        else if (_newValue == "Reamur") {
          _result = _inputUser * (4 / 5);
        }
      else {
          _result = _inputUser * (9 / 5) + 32;
        }
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
        body: 
        Container(
          margin: const EdgeInsets.all(8),
          child: 
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Input(inputSuhuController: inputSuhuController),
              Container(
                margin: const EdgeInsets.only(top: 16),
                width: 256,
                child: DropdownButton<String>(
                  isExpanded: true,
                  items: listItem.map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(
                        value,
                        style: const TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    );
                  }).toList(),
                  value: _newValue,
                  onChanged: (String? changeValue) {
                    setState(() {
                      _newValue = changeValue!;
                    });
                  },
                ),
              ),
              Result(
                result: _result,
              ),
              Convert(
                convertHandler: _temperatureConversion,
              ),
              Container(),
              Expanded(
                child: ListView(),
              )
            ],
          ),
        ),
      ),
    );
  }
}