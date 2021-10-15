import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Input extends StatelessWidget {
  const Input({Key? key, required this.inputSuhuController}) : super(key: key);

  final TextEditingController inputSuhuController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: inputSuhuController,
      decoration: const InputDecoration(hintText: 'Masukkan Suhu Dalam Celcius'),
      keyboardType: TextInputType.number,
      inputFormatters: <TextInputFormatter>[
        FilteringTextInputFormatter.digitsOnly
      ],
    );
  }
}