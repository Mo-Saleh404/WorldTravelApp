import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:worldtravelapp/Model/onboardinng_Data.dart';
import 'package:worldtravelapp/pages/login.dart';
import 'package:worldtravelapp/widgets/primary_color.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  final PageController _controller = PageController();
  int _currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _controller,
              itemCount: onboardinngData.length,
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              },
              itemBuilder: (context, index) => Column(
                children: [
                  Gap(50),
                  Image.asset(onboardinngData[index].image, width: 350),
                  Gap(50),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      onboardinngData[index].title,
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          color: Color(0xff000000),
                    
                          fontSize: 34,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: List.generate(
                    onboardinngData.length,
                    (index) => Container(
                      margin: EdgeInsets.only(right: 7),
                      height: 10,
                      width: _currentPage == index ? 28 : 15,
                      decoration: BoxDecoration(
                        color: _currentPage == index
                            ? PrimaryColor
                            : Colors.black,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    if (_currentPage == onboardinngData.length - 1) {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (c) => Login()),
                      );
                    } else {
                      _controller.nextPage(
                        duration: Duration(milliseconds: 400),
                        curve: Curves.easeInOut,
                      );
                    }
                  },

                  child: Image.asset("assets/Frame 4.png", width: 80),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
