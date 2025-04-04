import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pinput/pinput.dart';
import 'package:tawasel/views/password_recovery_view.dart';

class verification_code extends StatelessWidget {
  verification_code({Key? key}) : super(key: key);
  String? verif;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Container(
            margin: EdgeInsets.symmetric(vertical: 6, horizontal: 6),
            decoration: BoxDecoration(
              color: Color(0xffECECEC),
              borderRadius: BorderRadius.circular(20),
            ),
            child: IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                size: 20,
              ),
              onPressed: () {
                GoRouter.of(context).pop();
              },
            ),
          )),
      body: Form(
        child: SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
            SizedBox(
              height: 15,
            ),
            Text("رمز التحقق",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                )),
            SizedBox(
              height: 16,
            ),
            Text(
              "..لقد أرسلنا رمز التحقق إلى بريدك الإلكترونى",
              style: TextStyle(
                color: Color.fromRGBO(152, 152, 152, 1),
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "...من فضلك أدخل الرمز",
              style: TextStyle(
                color: Color.fromRGBO(152, 152, 152, 1),
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Center(
              child: Pinput(
                defaultPinTheme: PinTheme(
                    width: 60,
                    height: 60,
                    textStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.w200,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.all(Radius.circular(13)),
                    )),
                length: 5,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: SizedBox(
                width: 390,
                height: 48,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff648DDC),
                    ),
                    onPressed: () {},
                    child: Text(
                      "تاكيد رمز ",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    )),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
