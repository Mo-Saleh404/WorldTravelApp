import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:worldtravelapp/pages/forgetpassword.dart';
import 'package:worldtravelapp/pages/welcome.dart';
import 'package:worldtravelapp/widgets/customContainer.dart';
import 'package:worldtravelapp/widgets/customText.dart';
import 'package:worldtravelapp/widgets/primary_color.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerifyCode extends StatelessWidget {
  const VerifyCode({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(centerTitle: true, backgroundColor: Colors.white),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap(60),
            Customtext(text: "Verify Code"),
            Gap(15),
            Text.rich(
              TextSpan(
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
                children: [
                  TextSpan(
                    text:
                        "We will send you a message to your SMS and email, if\nsomething goes wrong, please contact us. ",
                  ),
                  TextSpan(
                    text: "Help",
                    style: TextStyle(color: PrimaryColor),
                  ),
                ],
              ),
            ),
            Gap(20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: PinCodeTextField(
                appContext: context,
                length: 4,
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(10),
                  fieldHeight: 84,
                  fieldWidth: 80,
                  activeFillColor: Colors.grey[200],
                  inactiveColor: Colors.grey[200],
                  selectedFillColor: Colors.grey[200],
                  activeColor: Colors.grey[200],
                  selectedColor: PrimaryColor,
                ),
                enableActiveFill: true,
                keyboardType: TextInputType.number,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Didn’t receive any code? ",
                  style: GoogleFonts.mulish(
                    textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Text(
                  " Resend Again ",
                  style: GoogleFonts.mulish(
                    textStyle: TextStyle(
                      color: PrimaryColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
            Center(
              child: Text(
                " Request a new code in 00:30s",
                style: GoogleFonts.mulish(
                  textStyle: TextStyle(
                    color: Color(0xff606060),
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            Gap(60),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (c) => Welcome()),
                );
              },
              child: Center(child: Customcontainer(name: "Verify Code")),
            ),
          ],
        ),
      ),
    );
  }
}
