import 'package:flutter/material.dart';

class MyProfileView extends StatelessWidget {
  const MyProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F5F8),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back_ios_new),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsetsDirectional.only(start: 20, end: 20, top: 8, bottom: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "My profile",
              style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              children: [
                Text(
                  "Personal details",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Spacer(),
                TextButton(
                  onPressed: () {},
                  child: Text("change"),
                )
              ],
            ),
            Container(
              // height: 197,
              padding: EdgeInsets.all(16),
              child: Row(
                children: [
                  Image.network(
                    "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fHww",
                    height: 100,
                    width: 91,
                    fit: BoxFit.scaleDown,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Marvis Ighedosa",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        "Dosamarvis@gmail.com",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Container(
                        height: 1,
                        width: 165,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        "+234 9011039271",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Container(
                        height: 1,
                        width: 165,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        "No 15 uti street off ovie\npalace road effurun delta\nstate",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              decoration: BoxDecoration(color: Color(0xffFFFFFF), borderRadius: BorderRadius.circular(20)),
            ),
            SizedBox(height: 27),
            _Item(title: "Orders"),
            _Item(title: "Pending reviews"),
            _Item(title: "Faq"),
            _Item(title: "Help"),
            SizedBox(height: 20),
            FilledButton(onPressed: () {}, child: Text("Update"))
          ],
        ),
      ),
    );
  }
}

class _Item extends StatelessWidget {
  final String title;

  const _Item({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsetsDirectional.only(start: 23, top: 14, end: 36, bottom: 15),
          child: Row(
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Spacer(),
              IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward_ios))
            ],
          ),
          decoration: BoxDecoration(color: Color(0xffFFFFFF), borderRadius: BorderRadius.circular(20)),
        ),
        SizedBox(
          height: 27,
        )
      ],
    );
  }
}
