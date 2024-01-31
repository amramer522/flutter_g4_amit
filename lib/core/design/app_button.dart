import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  const AppButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  FilledButton(
      onPressed: () {},
      style: FilledButton.styleFrom(
          backgroundColor: Color(0xffDD8560),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
          ),
          fixedSize: Size(MediaQuery.of(context).size.width, 44)
      ),
      child: Text("Save"),
    );
  }
}
