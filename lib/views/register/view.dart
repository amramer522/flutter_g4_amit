import 'package:flutter/material.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text("Hello World",
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 50,
                      fontWeight: FontWeight.w400,
                      backgroundColor: Colors.yellow,
                      letterSpacing: 10,
                      decoration: TextDecoration.combine([
                        TextDecoration.underline,
                        TextDecoration.lineThrough,
                        TextDecoration.overline,
                      ]))),
              Image.network(
                "https://grammarist.com/wp-cofsddsfdsntent/uploads/Persons-vs.-People-Proper-Usage-Examples-1024x486.png",
              // color: Colors.red,
                width: 200,
                height: 300,
                fit: BoxFit.fitWidth,
                errorBuilder: (context, error, stackTrace) => Text(error.toString()),
              ),
              TextButton(onPressed: () {}, child: Text("Hello")),
              FilledButton(onPressed: () {}, child: Text("Hello")),
              ElevatedButton(onPressed: () {}, child: Text("Hello")),
              OutlinedButton(onPressed: () {}, child: Text("Hello")),
              Icon(Icons.search_sharp),
              IconButton(onPressed: () {}, icon: Icon(Icons.search_sharp)),
              Container(
                height: 300,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: Colors.green,width: 2)
                ),
                child: Center(child: Text("Amr")),
              ),
              CircleAvatar(
                radius: 100,
              ),
              Text("data")
            ],
          ),
        ),
      ),
    );
  }


  void printDetails(){

  }
}
