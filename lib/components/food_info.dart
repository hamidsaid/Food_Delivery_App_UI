import 'package:flutter/material.dart';

class FoodInfo extends StatelessWidget {
  const FoodInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                Icons.star,
                color: Colors.yellow[700],
              ),
              const Text(
                "4.9",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.local_fire_department,
                color: Colors.yellow[900],
              ),
              const Text(
                "44 Calories",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ],
          ),
          Row(
            children: const [
              Icon(
                Icons.timer,
                color: Colors.lightBlue,
              ),
              Text(
                "20-30 Min",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
