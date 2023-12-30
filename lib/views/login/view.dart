import 'package:flutter/material.dart';

class LoginView extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      drawer: Drawer(
        backgroundColor: Colors.green,
        child: SafeArea(
          child: Column(
            children: [
              Text("data"),
              Text("data"),
              Text("data"),
              Text("data"),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: false,
        title: Text("Hello World"),
      ),
    );
  }

}