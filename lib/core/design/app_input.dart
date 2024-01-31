import 'package:flutter/material.dart';

class AppInput extends StatelessWidget {
  final String? hintText,labelText;
  const AppInput({Key? key,this.labelText,this.hintText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          decoration: InputDecoration(
            hintText: hintText,
            labelText: labelText,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            )
          ),
        ),
        SizedBox(height: 32,)
      ],
    );
  }
}
