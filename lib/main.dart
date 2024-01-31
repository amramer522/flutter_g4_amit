import 'package:flutter/material.dart';
import 'package:flutter_g4_amit/ahmed_akram_app/views/splash/view.dart';
import 'package:flutter_g4_amit/core/logic/helper_methods.dart';
import 'package:flutter_g4_amit/views/my_profile/view.dart';

import 'ahmed_akram_app/views/home/view.dart';
import 'ahmed_akram_app/views/register/view.dart';

void main() {
  runApp(
    MaterialApp(
      navigatorKey: navigatorKey,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Montserrat"),
      home: SplashView(),
    ),
  );
}

/*
Widgets
1. MaterialApp
2. Scaffold
3. Image.network
4. Text
5. TextButton
6. FilledButton
7. ElevatedButton
8. Row
9. Column
10. CircleProgressIndicator
11. SafeArea
12. AppBar
13. Drawer
14. LinearProgressIndicator
15. OutlinedButton
16. Icon
17. IconButton
18. Container
19. Center
20. CircleAvatar
21. SingleChildScrollView
22. TextFormField
23. Padding
24  GestureDetector
25. Image.asset
26. Align
27. Stack
28. Directionality
29.PageView
30.PageView.builder
31.GridView
32.GridView.builder
33.ListView
34.ListView.builder
35.Expanded
36.Spacer
// Navigation
// Cursoral slider


// StateFullWidget
// MediaQuery
// font - assets
 */
