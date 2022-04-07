import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/constants.dart';

import '../components/buttons/cart_btn.dart';
import '../components/food_info.dart';
import '../components/size_info.dart';

class ItemPage extends StatefulWidget {
  @override
  _ItemPageState createState() => _ItemPageState();
}

class _ItemPageState extends State<ItemPage> {
  bool isPressed = false;
  int counter = 2;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.fromLTRB(20, 40, 20, 0),
          child: Column(
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
                    child: IconButton(
                      icon: const Icon(Icons.arrow_back_ios),
                      color: Colors.black,
                      onPressed: () {
                        setState(() {
                          Navigator.pop(context);
                        });
                      },
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isPressed = !isPressed;
                      });
                    },
                    child: AnimatedContainer(
                        padding: EdgeInsets.all(5),
                        duration: Duration(milliseconds: 300),
                        child: isPressed
                            ? const Icon(
                                Icons.favorite,
                                color: Colors.red,
                                size: 30,
                              )
                            : const Icon(
                                Icons.favorite_outline,
                                color: Colors.black,
                                size: 30,
                              )),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "Melting Cheese",
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.8),
                        fontSize: 21,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 5, 0, 10),
                    child: RichText(
                      text: TextSpan(
                        text: "\$",
                        style: const TextStyle(
                          color: Colors.red,
                          fontSize: 21,
                          fontWeight: FontWeight.w600,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: '9.45',
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.8),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white,
                          spreadRadius: 10,
                          blurRadius: 5,
                        ),
                      ],
                    ),
                    child: Image.asset(
                      "assets/largePizza.png",
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          color: kMainColor,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black,
                              spreadRadius: -1,
                              blurRadius: 5,
                            ),
                          ],
                        ),
                        child: IconButton(
                          padding: EdgeInsets.zero,
                          icon: const Icon(
                            Icons.remove,
                            color: Colors.white,
                            size: 20,
                          ),
                          onPressed: () {
                            setState(() {
                              if (counter > 1) {
                                counter--;
                              }
                            });
                          },
                        ),
                      ),
                      Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                          child: Text(
                            counter.toString(),
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                            ),
                          )),
                      Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          color: kMainColor,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black,
                              spreadRadius: -1,
                              blurRadius: 5,
                            ),
                          ],
                        ),
                        child: IconButton(
                          padding: EdgeInsets.zero,
                          icon: const Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 20,
                          ),
                          onPressed: () {
                            setState(() {
                              counter++;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                  const Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        "\$ 19.34",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                        ),
                      )),
                  SizeInfo(),
                  FoodInfo(),
                  CartButton(),
                  const Padding(
                    padding: EdgeInsets.only(
                      bottom: 30.0,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
