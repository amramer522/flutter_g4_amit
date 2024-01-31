import 'package:flutter/material.dart';
import 'package:flutter_g4_amit/ahmed_akram_app/views/home/view.dart';
import 'package:flutter_g4_amit/core/logic/helper_methods.dart';

class Login2View extends StatefulWidget {
  const Login2View({Key? key}) : super(key: key);

  @override
  State<Login2View> createState() => _Login2ViewState();
}

class _Login2ViewState extends State<Login2View> {
  bool? isChecked = true;
  bool isHide = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        titleSpacing: 12,
        leadingWidth: 30,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
            )),
        title: Text("Account Login"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              "assets/images/login.png",
              height: 225,
              width: 225,
            ),
            SizedBox(height: 20),
            Text(
              "Email Address",
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: Color(0xff696F79)),
            ),
            SizedBox(height: 8),
            TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
                  filled: true,
                  fillColor: Color(0xffF9F9F9),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide(
                        color: Colors.transparent,
                      ))),
            ),
            SizedBox(height: 16),
            Text(
              "Password",
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: Color(0xff696F79)),
            ),
            SizedBox(height: 8),
            TextFormField(
              obscureText: isHide,
              decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
                  filled: true,
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: IconButton(
                    icon: Icon(isHide ? Icons.visibility_off : Icons.visibility),
                    onPressed: () {
                      isHide = !isHide;
                      setState(() {});
                    },
                  ),
                  fillColor: Color(0xffF9F9F9),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide(
                        color: Colors.transparent,
                      ))),
            ),
            // Container(
            //   height: 56,
            //   alignment: AlignmentDirectional.centerEnd,
            //   width: double.infinity,
            //   decoration: BoxDecoration(
            //     borderRadius: BorderRadius.circular(16),
            //     color: Color(0xffF9F9F9),
            //   ),
            //   child: IconButton(
            //     icon: Icon(isHide ? Icons.visibility_off : Icons.visibility),
            //     onPressed: () {
            //       isHide = !isHide;
            //       setState(() {});
            //     },
            //   ),
            // ),
            SizedBox(height: 4),
            Row(
              children: [
                Checkbox(
                  value: isChecked,
                  onChanged: (value) {
                    print(value);
                    isChecked = value;
                    // Refresh
                    setState(() {});
                  },
                ),
                SizedBox(width: 8),
                Text(
                  "Remember me",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff696F79),
                  ),
                ),
                Spacer(),
                Text(
                  "Forgot Password?",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff696F79),
                  ),
                ),
              ],
            ),
            SizedBox(height: 32),
            FilledButton(
              onPressed: () {
                navigateTo(HomeView());
              },
              child: Text("Login"),
            ),
            SizedBox(height: 24),
            Row(
              children: [
                Spacer(),
                Text(
                  "Don’t have an account ?",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff696F79),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text("Register"),
                ),
                Spacer(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
