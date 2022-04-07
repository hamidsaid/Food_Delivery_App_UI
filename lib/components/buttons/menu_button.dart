import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../screens/item_page.dart';

class MenuButton extends StatelessWidget {
  const MenuButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return ItemPage();
          }));
        },
        child: const Text(
          'Menu',
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600),
        ),
        style: ElevatedButton.styleFrom(
            elevation: 20,
            primary: kMainColor,
            fixedSize: const Size(90, 90),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50))),
      ),
    );
  }
}
