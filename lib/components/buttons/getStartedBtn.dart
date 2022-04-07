import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../screens/home_page.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return HomePage();
            },
          ),
        );
      },
      child: const Text(
        'Get Started',
        style: TextStyle(
            color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600),
      ),
      style: ElevatedButton.styleFrom(
          elevation: 20,
          primary: kMainColor,
          fixedSize: const Size(200, 60),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))),
    );
  }
}
