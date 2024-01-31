import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back_ios_new),
        ),
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        color: Colors.yellow,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [

            Image.network(
              "https://www.malemodelscene.net/wp-content/uploads/2020/04/Mathias-Lauridsen-Massimo-Dutti-SS20-Limited-Edition-24.jpg",
              height: 512,
              width: double.infinity,
              fit: BoxFit.fill,
            ),
            Align(
              alignment: AlignmentDirectional.bottomCenter,
              child: Container(
                height: MediaQuery.of(context).size.height/2,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(24),
                    )),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
