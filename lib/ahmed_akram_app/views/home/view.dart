import 'package:flutter/material.dart';
import 'package:flutter_g4_amit/ahmed_akram_app/views/register/view.dart';
import 'package:flutter_g4_amit/views/login/view.dart';
import 'package:flutter_g4_amit/views/login2/view.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final persons = [
    Person(
        image: "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fHww",
        name: "Amr",
        age: 27),
    Person(
        image: "https://media.licdn.com/dms/image/D4D03AQFHszHTeYFKvw/profile-displayphoto-shrink_800_800/0/1663237154241?e=1711584000&v=beta&t=LZ-QUI70ad_x6H2YJkAxHJOiIpVkYXwwXzim-S56-cs",
        name: "Ahmed",
        age: 30),
    Person(image: "https://grammarist.com/wp-content/uploads/Persons-vs.-People-Proper-Usage-Examples-1024x486.png", name: "Ali", age: 20),
    Person(image: "", name: "Fatma", age: 40),
  ];

  bool isLoading = true;

  void getData() async {
    await Future.delayed(Duration(seconds: 2));
    isLoading = false;
    setState(() {});
  }


  @override
  void initState() {
    super.initState();
    getData();

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.ac_unit,
            )),
      ),
      body: isLoading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : GridView.builder(
              padding: EdgeInsets.all(18),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 38,
                crossAxisSpacing: 18,
                childAspectRatio: 151 / 168,
              ),
              itemBuilder: (context, index) {
                print(index);
                return Column(
                  children: [
                    Expanded(
                      child: Image.network(
                        persons[index].image,
                      ),
                    ),
                    Row(
                      children: [
                        Text(persons[index].name),
                        Spacer(),
                        Text("Heloo"),
                      ],
                    ),
                  ],
                );
              },
              itemCount: persons.length,
            ),
    );
  }
}

class Person {
  final String name, image;
  final int age;

  Person({required this.name, required this.image, required this.age});
}
