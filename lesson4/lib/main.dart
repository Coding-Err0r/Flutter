import 'package:flutter/material.dart';
import 'package:lesson2/animations/FadeAnimation.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ));

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: <Widget>[
          CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                expandedHeight: 450,
                backgroundColor: Colors.black,
                flexibleSpace: FlexibleSpaceBar(
                  collapseMode: CollapseMode.parallax,
                  background: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/w (1).jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.bottomRight,
                              colors: [
                            Colors.black.withOpacity(0.9),
                            Colors.black.withOpacity(0.2)
                          ])),
                      child: Padding(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            FadeAnimation(
                              1,
                              Text(
                                "Bloodborne",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              children: <Widget>[
                                FadeAnimation(
                                  1.2,
                                  Text(
                                    "60 Gameplay",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 16),
                                  ),
                                ),
                                SizedBox(
                                  width: 50,
                                ),
                                FadeAnimation(1.4,
                                    Icon(Icons.people, color: Colors.grey)),
                                SizedBox(
                                  width: 5,
                                ),
                                FadeAnimation(
                                  1.4,
                                  Text(
                                    "1M Players",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 15,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SliverList(
                delegate: SliverChildListDelegate([
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        FadeAnimation(
                            1.6,
                            Text(
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                              style: TextStyle(
                                  color: Colors.grey,
                                  height: 1.4,
                                  fontSize: 14),
                            )),
                        SizedBox(
                          height: 40,
                        ),
                        FadeAnimation(
                            1.8,
                            Text(
                              "Made By",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            )),
                        SizedBox(
                          height: 5,
                        ),
                        FadeAnimation(
                            2,
                            Text(
                              "Fromsoft studio , Japan",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 16),
                            )),
                        SizedBox(
                          height: 15,
                        ),
                        FadeAnimation(
                            2.1,
                            Text(
                              "Genre",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            )),
                        SizedBox(
                          height: 5,
                        ),
                        FadeAnimation(
                            2.2,
                            Text(
                              "Action RPG, Dungeon crawl",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 16),
                            )),
                        SizedBox(
                          height: 15,
                        ),
                        FadeAnimation(
                            2.3,
                            Text(
                              "Videos",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            )),
                        SizedBox(
                          height: 5,
                        ),
                        FadeAnimation(
                            2.5,
                            Container(
                              height: 200,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: <Widget>[
                                  makeVideo(image: "assets/images/w (2).jpg"),
                                  makeVideo(image: "assets/images/w (3).jpg"),
                                  makeVideo(image: "assets/images/w (4).jpg"),
                                  makeVideo(image: "assets/images/w (5).jpg"),
                                ],
                              ),
                            )),
                        SizedBox(
                          height: 130,
                        ),
                      ],
                    ),
                  )
                ]),
              ),
            ],
          ),
          Positioned.fill(
            bottom: 30,
            child: Container(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: FadeAnimation(
                    2.7,
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 30),
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.red[500]),
                      child: Align(
                        child: Text(
                          "Follow on twitter",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget makeVideo({image}) {
    return AspectRatio(
      aspectRatio: 2 / 1.5,
      child: Container(
        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
        ),
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
            Colors.black.withOpacity(0.9),
            Colors.black.withOpacity(0.2)
          ])),
          child: Align(
            child: Icon(
              Icons.play_arrow,
              color: Colors.white,
              size: 50,
            ),
          ),
        ),
      ),
    );
  }
}
