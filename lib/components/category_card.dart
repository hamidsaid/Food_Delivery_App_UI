import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  late String image;
  late String title;
  late Function press;
  late bool isActive;

  CategoryCard(
      {required this.image,
      required this.title,
      required this.press,
      this.isActive = false});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      child: Column(
        children: [
          GestureDetector(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.all(10.0),
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3.0),
                  image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.fill,
                  ),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 7,
                      spreadRadius: -4,
                    ),
                  ],
                ),
              )),
          SizedBox(
            height: size.height * 0.01,
          ),
          Text(
            title,
            style: const TextStyle(
              fontSize: 12,
            ),
          )
        ],
      ),
    );
  }
}
