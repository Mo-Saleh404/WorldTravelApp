import 'package:flutter/material.dart';
import 'package:worldtravelapp/pages/onboarding.dart';
import 'package:worldtravelapp/widgets/primary_color.dart';

class Splach extends StatefulWidget {
  const Splach({super.key});

  @override
  State<Splach> createState() => _SplachState();
}

class _SplachState extends State<Splach> {
  void initState() {
      super.initState();
      Future.delayed(Duration(seconds: 2), () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (c) => Onboarding()),
        );
      });
    }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: PrimaryColor,
      body: Stack(
        children: [
          Positioned(
            top: 93,
            left: 59,
            child: Image.asset("assets/Balloon.png", width: 110),
          ),
          Positioned(
            top: 682,
            left: 227,
            child: Image.asset("assets/Balloon2.png", width: 128),
          ),
          Center(child: Image.asset("assets/WorldTravel.png", width: 271)),
        ],
      ),
    );
  }
}
// Column(
//         children: [
//           Stack(
//             children:[
//                Image.asset("assets/Balloon.png",width: 90,height: 207,)]),
//           Text("WorldTravel"),
//           Padding(
//             padding: const EdgeInsets.only(top: 122,left: 157),
//             child: Image.asset("assets/Balloon2.png",width: 92,height: 206,),
//           ),
//         ],
//       ),