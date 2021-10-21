import 'package:flutter/material.dart';

class Convert extends StatelessWidget {
  final Function convertHandler;

  const Convert({ Key? key, required this.convertHandler }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 32),
      child: ElevatedButton(
        onPressed: () {
          convertHandler();
        },
        child: const Text(
          'Konversi Suhu',
          style: TextStyle(fontSize: 20),
        ),
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(double.infinity, 50),
        ),
      ),
    );
  }
}