import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Image.network(
              "https://media.licdn.com/dms/image/D4D03AQFHszHTeYFKvw/profile-displayphoto-shrink_800_800/0/1663237154241?e=1709164800&v=beta&t=rziimmaNDkGSTq2XBvM6ofUUxk67VFz3LfTHJuiwVYQ",
              height: 200,
              width: 200,
            ),
            Text("Amr Bakr"),
            Text("0123213123213123"),
            CircularProgressIndicator(),
            TextButton(onPressed: () {

            }, child: Text("Hello")),
            FilledButton(
              child: Text("login1"),
              onPressed: () {
                print("Hello From Console");
              },
            ),
            ElevatedButton(
              child: Text("login2"),
              onPressed: () {
                print("Hello From Console");
              },
            )
          ],
        ),
      ),
    );

  }

}