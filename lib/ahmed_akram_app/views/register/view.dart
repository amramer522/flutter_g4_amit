import 'package:flutter/material.dart';
import 'package:flutter_g4_amit/core/design/app_input.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leadingWidth: 100,
          leading: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: CircleAvatar(
              backgroundColor: Colors.green,
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.arrow_back_ios_new),
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(18),
          child: Column(
            children: [
              Image.asset("assets/images/suit.png",width: 50,height: 77,color: Colors.black,),
              SizedBox(height: 13,),
              Text("أحمد & أكرم",style: TextStyle(fontSize: 30,fontFamily: "Swanky",color: Color(0xff00147C)),),
              SizedBox(height: 39,),
              Text("تسجيل حساب جديد",style: TextStyle(fontSize: 30,fontFamily: "Swanky",color: Color(0xff00147C)),),
              SizedBox(height: 31,),
              AppInput(
                hintText: "ادخل رقم الهاتف",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
