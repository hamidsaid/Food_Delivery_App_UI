import 'package:flutter/material.dart';
import 'package:food_delivery/constants.dart';

class FoodCard extends StatelessWidget {
  late String title;
  late String calories;
  late String image;
  late String price;

  FoodCard(
      {required this.title,
      required this.calories,
      required this.image,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(13),
      child: Container(
        margin: const EdgeInsets.all(6.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(13),
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 1,
            ),
          ],
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1,
                        color: Colors.black),
                  ),
                  const SizedBox(
                    height: 4.0,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.local_fire_department,
                        color: Colors.red[200],
                      ),
                      Text(
                        calories,
                        style: const TextStyle(
                          fontSize: 13.0,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 7.0,
                  ),
                  Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                        image: AssetImage(image),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 7.0,
                  ),
                  Text(
                    "\$" + price,
                    style: const TextStyle(
                        fontSize: 13.0,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1,
                        color: Colors.black54),
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: kMainColor,
                    ),
                    child: Icon(Icons.add, color: Colors.white, size: 17),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
