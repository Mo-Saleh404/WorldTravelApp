import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:worldtravelapp/pages/forgetpassword.dart';
import 'package:worldtravelapp/pages/signup.dart';
import 'package:worldtravelapp/pages/welcome.dart';
import 'package:worldtravelapp/widgets/customContainer.dart';
import 'package:worldtravelapp/widgets/customText.dart';
import 'package:worldtravelapp/widgets/customTextFiled.dart';
import 'package:worldtravelapp/widgets/primary_color.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool ischecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            Gap(40),
            Image.asset("assets/login.png", width: 300),
            Gap(20),
            Customtext(text: "Welcome Back"),
            Text(
              "sign in to access your account",
              style: GoogleFonts.mulish(
                textStyle: TextStyle(
                  color: Color(0xff606060),
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            Gap(40),
            Customtextfiled(
              hinttext: "Enter your email",
              suffixicon: Icons.email_outlined,
            ),
            Gap(12),
            Customtextfiled(
              hinttext: "Password",
              suffixicon: Icons.visibility_off_outlined,
            ),
            Gap(10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Transform.scale(
                        scale: 0.7,
                        child: Checkbox(
                          value: ischecked,
                          onChanged: (value) {
                            ischecked = value!;
                          },
                        ),
                      ),
                      Text("Remember me"),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (c) => Forgetpassword()),
                    );
                    },
                    child: Text(
                      "Forget password ?",
                      style: TextStyle(color:PrimaryColor),
                    ),
                  ),
                ],
              ),
            ),
            Gap(30),
            SizedBox(
              width: 277,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(child: Divider(thickness: 2)),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text("or sign in with"),
                  ),
                  Expanded(child: Divider(thickness: 2)),
                ],
              ),
            ),
            Gap(20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 90),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(shape: BoxShape.circle),
                    child: Image.asset(
                      "assets/google.png",
                      fit: BoxFit.contain,
                    ),
                  ),

                  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(shape: BoxShape.circle),
                    child: Image.asset(
                      "assets/logos_facebook.png",
                      fit: BoxFit.contain,
                    ),
                  ),

                  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(shape: BoxShape.circle),
                    child: Image.asset(
                      "assets/twitter.png",
                      fit: BoxFit.contain,
                    ),
                  ),
                ],
              ),
            ),
            Gap(35),
          GestureDetector(
            onTap: (){
                Navigator.push(
                      context,
                      MaterialPageRoute(builder: (c) => Welcome()),
                    );
            },
            child: Customcontainer(name: "Login")),
            Gap(15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don’t have an account?",
                  style: GoogleFonts.mulish(
                    textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (c) => Signup()),
                    );
                  },
                  child: Text(
                    " Sign up",
                    style: GoogleFonts.mulish(
                      textStyle: TextStyle(
                        color: PrimaryColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
