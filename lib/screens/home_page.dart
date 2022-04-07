import 'package:flutter/material.dart';
import 'package:food_delivery/constants.dart';
import 'package:food_delivery/components/category_card.dart';
import 'package:food_delivery/components/food_card.dart';
import 'package:food_delivery/screens/item_page.dart';

import '../components/buttons/menu_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.fromLTRB(20, 40, 20, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(10.0, 10.0)),
                      color: Colors.white,
                    ),
                    child: const Icon(
                      Icons.menu,
                      color: Colors.black,
                      size: 36,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      color: kMainColor,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black54,
                          blurRadius: 6.0,
                        ),
                      ],
                    ),
                    child: const Icon(
                      Icons.search,
                      color: Colors.white,
                      size: 31,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: size.height * 0.05,
              ),
              const Text(
                "Hi Hamid",
                style: TextStyle(color: kMainColor, fontSize: 18),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Text(
                "Find your Delicious Food",
                style: TextStyle(
                  color: Colors.black.withOpacity(0.8),
                  fontSize: 21,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              Row(
                children: [
                  CategoryCard(
                    image: "assets/hamburger.png",
                    title: "Fast Food",
                    press: () {},
                  ),
                  SizedBox(
                    width: size.width * 0.06,
                  ),
                  CategoryCard(
                    image: "assets/Pizza.png",
                    title: "Italian",
                    press: () {},
                  ),
                  SizedBox(
                    width: size.width * 0.06,
                  ),
                  CategoryCard(
                    image: "assets/sushi_pic.jpg",
                    title: "Japanese",
                    press: () {},
                  ),
                  SizedBox(
                    width: size.width * 0.06,
                  ),
                  CategoryCard(
                    image: "assets/Scorpion.png",
                    title: "Sea Food",
                    press: () {},
                  ),
                ],
              ),
              SizedBox(
                height: size.height * 0.09,
              ),
              Text(
                "Popular",
                style: TextStyle(
                  color: Colors.black.withOpacity(0.8),
                  fontSize: 21,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return ItemPage();
                          }));
                        });
                      },
                      child: FoodCard(
                          title: "Melting Cheese",
                          calories: "44 calories",
                          image: "assets/Pizza2.png",
                          price: "9.47"),
                    ),
                    FoodCard(
                        title: "Pizza Capricciosa",
                        calories: "54 calories",
                        image: "assets/Pizza3.png",
                        price: "12.55"),
                  ],
                ),
              ),
              SizedBox(
                height: size.height * 0.05,
              ),
              MenuButton(),
              const Padding(
                padding: EdgeInsets.only(
                  bottom: 50.0,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
