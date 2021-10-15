import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
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
              TextFormField(
                decoration:
                    const InputDecoration(hintText: 'Masukkan Suhu Dalam Celcius'),
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(bottom: 16),
                        child: const Text(
                          'Suhu dalam Kelvin', 
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                      const Text('150', style: TextStyle(fontSize: 48),),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(bottom: 16),
                        child: const Text(
                          'Suhu dalam Reamor', 
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                      const Text('200', style: TextStyle(fontSize: 48),),
                    ],
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 32),
                child: ElevatedButton(
                  onPressed: () {}, 
                  child: const Text('Konversi Suhu', style: TextStyle(fontSize: 16),),
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 50),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      );
  }
}