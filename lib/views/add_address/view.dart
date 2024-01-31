import 'package:flutter/material.dart';

import '../../core/design/app_button.dart';
import '../../core/design/app_input.dart';

class AddAddressView extends StatelessWidget {
  const AddAddressView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new),
          onPressed: () {},
        ),
        title: Text("Add Address"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 38, horizontal: 17),
        child: Column(
          children: [
            AppInput(hintText: "Enter Your Address",labelText: "Address"),
            AppInput(hintText: "Enter Your Building No",labelText: "Building No"),
            AppInput(hintText: "Enter Your Floor No",labelText: "Floor No"),
            AppInput(hintText: "Enter Your Apartment No",labelText: "Apartment No"),
            SizedBox(height: 220),
            AppButton()
          ],
        ),
      ),
    );
  }
}
