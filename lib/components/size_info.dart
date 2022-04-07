import 'package:flutter/material.dart';

import '../constants.dart';

class SizeInfo extends StatelessWidget {
  const SizeInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: const [
              Icon(
                Icons.circle_outlined,
                color: Colors.grey,
              ),
              Text(
                "\$6.44",
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
              Text(
                "8 inch",
              )
            ],
          ),
          Column(
            children: const [
              Icon(
                Icons.circle,
                color: kMainColor,
              ),
              Text(
                "\$9.47",
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
              Text(
                "12 inch",
              )
            ],
          ),
          Column(
            children: const [
              Icon(
                Icons.circle_outlined,
                color: Colors.grey,
              ),
              Text(
                "\$15.32",
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
              Text(
                "16 inch",
              )
            ],
          )
        ],
      ),
    );
  }
}
