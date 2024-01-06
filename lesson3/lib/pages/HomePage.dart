import 'package:flutter/material.dart';
import 'package:lesson2/animations/FadeAnimation.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        leading: Icon(null),
        elevation: 3,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.shopping_basket,
              color: Colors.grey[700],
            ),
            onPressed: () {},
          )
        ],
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    FadeAnimation(
                        1,
                        Text(
                          "Food Delivery",
                          style: TextStyle(
                              color: Colors.grey[700],
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 40,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          FadeAnimation(
                              1, makeCategory(isActive: true, title: "Pizza")),
                          FadeAnimation(1.1,
                              makeCategory(isActive: false, title: "Burger")),
                          FadeAnimation(
                              1.2,
                              makeCategory(
                                  isActive: false, title: "French Fry")),
                          FadeAnimation(
                              1.3,
                              makeCategory(
                                  isActive: false, title: "Fried Rice")),
                          FadeAnimation(1.4,
                              makeCategory(isActive: false, title: "Nuggets")),
                          FadeAnimation(1.5,
                              makeCategory(isActive: false, title: "Chowmin")),
                          FadeAnimation(1.6,
                              makeCategory(isActive: false, title: "Pasta")),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ]),
            ),
            FadeAnimation(
                1,
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    "Free Delivery",
                    style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                )),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    FadeAnimation(
                        1, makeItem(image: "assets/images/w (1).jpg")),
                    FadeAnimation(
                        1.2, makeItem(image: "assets/images/w (2).jpg")),
                    FadeAnimation(
                        1.4, makeItem(image: "assets/images/w (3).jpg")),
                    FadeAnimation(
                        1.6, makeItem(image: "assets/images/w (4).jpg")),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }

  Widget makeCategory({isActive, title}) {
    return AspectRatio(
      aspectRatio: isActive ? 3.0 : 2.5 / 1.0,
      child: Container(
        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
            color: isActive ? Colors.yellow[700] : Colors.grey[200],
            borderRadius: BorderRadius.circular(50)),
        child: Align(
          child: Text(
            title,
            style: TextStyle(
                color: isActive ? Colors.white : Colors.grey[500],
                fontSize: 14,
                fontWeight: isActive ? FontWeight.bold : FontWeight.w100),
          ),
        ),
      ),
    );
  }

  Widget makeItem({image}) {
    return AspectRatio(
      aspectRatio: 1 / 1.7,
      child: GestureDetector(
        child: Container(
          margin: EdgeInsets.only(right: 20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image:
                  DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(begin: Alignment.bottomCenter, stops: [
                  0.2,
                  0.9
                ], colors: [
                  Colors.black.withOpacity(0.9),
                  Colors.black.withOpacity(0.1),
                ])),
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topRight,
                    child: Icon(
                      Icons.favorite,
                      color: Colors.white,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "\$ 15.00",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                        style: TextStyle(color: Colors.grey[600], fontSize: 14),
                      ),
                    ],
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
