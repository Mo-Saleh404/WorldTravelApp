import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:worldtravelapp/pages/verify_code.dart';
import 'package:worldtravelapp/widgets/customContainer.dart';
import 'package:worldtravelapp/widgets/customText.dart';
import 'package:worldtravelapp/widgets/customTextFiled.dart';

class Forgetpassword extends StatelessWidget {
  const Forgetpassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Customtext(text: "World Travel"),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          children: [
            Gap(80),
            Customtext(text: "Forget Password"),
            Gap(8),
              Text(
                'enter your phone number below to \n receive an 4-digit reset code',
                style: TextStyle(color: Colors.grey),
              ),
        Gap(40),
            Padding(
              padding: const EdgeInsets.only(right: 300),
              child: Text(
                'Email',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
        Gap(10),
        Customtextfiled(
      hinttext: "Enter Your Email",
       suffixicon:  Icons.email_outlined),
            Gap(60),
        GestureDetector(
          onTap: () {
             Navigator.push(
                  context,
                  MaterialPageRoute(builder: (c) => VerifyCode())
                  
             );
          },
          child: Customcontainer(name: "Send Code"))
          ],
        ),
      ),
    );
  }
}
