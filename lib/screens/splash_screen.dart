import 'package:flutter/material.dart';
import 'package:food_delivery/constants.dart';
import 'package:food_delivery/screens/home_page.dart';

import '../components/buttons/getStartedBtn.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kMainColor,
      body: Column(
        children: [
          Center(
            child: Container(
              height: size.height * 0.68,
              width: size.width,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage("assets/delivery_man.png"),
                //fit: BoxFit.cover
              )),
            ),
          ),
          Container(
            height: size.height * 0.3,
            width: size.width * 0.8,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(22.0),
              boxShadow: const [
                BoxShadow(
                  blurRadius: 7,
                  spreadRadius: -1,
                ),
              ],
            ),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 10.0),
                  child: RichText(
                    text: const TextSpan(
                      text: "Quick delivery at \n \t your",
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                            text: ' Doorstep',
                            style: TextStyle(color: Colors.red)),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                const Text(
                  'Home delivery and online reservation \n \t system for retaurants and cafe',
                  style: TextStyle(
                    color: Colors.black45,
                  ),
                ),
                SizedBox(
                  height: size.height * 0.015,
                ),
                GetStarted(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
