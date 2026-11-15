import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:worldtravelapp/pages/login.dart';
import 'package:worldtravelapp/widgets/customContainer.dart';
import 'package:worldtravelapp/widgets/customText.dart';
import 'package:worldtravelapp/widgets/customTextFiled.dart';
import 'package:worldtravelapp/widgets/primary_color.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool ischecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Gap(40),
              Image.asset("assets/login.png", width: 300),
              Gap(20),
              Customtext(text: "Get Started"),
              Text(
                "by creating a free account.",
                style: GoogleFonts.mulish(
                  textStyle: TextStyle(
                    color: Color(0xff606060),
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              Gap(20),
              Customtextfiled(
                hinttext: "Full name",
                suffixicon: Icons.person_outlined,
              ),
              Gap(10),
              Customtextfiled(
                hinttext: "Valid email",
                suffixicon: Icons.email_outlined,
              ),
              Gap(10),
              Customtextfiled(
                hinttext: "Phone number",
                suffixicon: Icons.smartphone_outlined,
              ),
              Gap(10),
              Customtextfiled(
                hinttext: "Strong password",
                suffixicon: Icons.visibility_off_outlined,
              ),
          //    
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
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
                    Expanded(
                      child: Text.rich(TextSpan( 
                         style: TextStyle(
                        fontSize: 12,fontWeight: FontWeight.w500
                        ),
                        children: [
                          TextSpan(text: "By checking the box you agree to our "),
                          TextSpan(text: "Terms",style: TextStyle(color: PrimaryColor)),
                          TextSpan(text: " and"),
                          TextSpan(text: " Conditions",style: TextStyle(color: PrimaryColor)),
                                    
                          
                        ])
                                      ),
                    )
                  ],
                ),
              ),
              Gap(40),
              Customcontainer(name: "Sign Up"),
              Gap(15),
                          Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already a member? ",
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
                        MaterialPageRoute(builder: (c) => Login()),
                      );
                    },
                    child: Text(
                      " Login in",
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
      ),
    );
  }
}
