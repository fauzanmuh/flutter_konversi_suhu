import 'package:flutter/material.dart';


class Result extends StatelessWidget {
  const Result({Key? key, required this.result}) : super(key: key);

  final double result;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 24, bottom: 24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Hasil",
            style: TextStyle(
              fontSize: 24,
            ),
          ),
          Text(
            result.toStringAsFixed(1),
            style: const TextStyle(
              fontSize: 56,
            ),
          )
        ],
      ),
    );
  }
}
