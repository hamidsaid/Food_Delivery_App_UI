import 'package:flutter/material.dart';

import '../../constants.dart';


class CartButton extends StatelessWidget {
  const CartButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: const Text(
        'ADD TO CART',
        style: TextStyle(
            color: Colors.white,
            fontSize: 21,
            fontWeight: FontWeight.w700),
      ),
      style: ElevatedButton.styleFrom(
          elevation: 20,
          primary: kMainColor,
          fixedSize: const Size(300, 60),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20))),
    );
  }
}
