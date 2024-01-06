import 'package:flutter/material.dart';
import 'package:lesson2/animations/FadeAnimation.dart';

class FindEvent extends StatelessWidget {
  const FindEvent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(232, 232, 233, 1),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 2,
        leading: Icon(
          Icons.menu,
          color: Colors.black.withOpacity(0.7),
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Container(
              width: 35,
              height: 35,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage('assets/images/w (6).jpg'),
                      fit: BoxFit.cover)),
              child: Transform.translate(
                offset: Offset(15, -15),
                child: Container(
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      border: Border.all(width: 3, color: Colors.white),
                      shape: BoxShape.circle,
                      color: Colors.green[600]),
                ),
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(vertical: 5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.white),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                      hintText: "Search Character",
                      hintStyle: TextStyle(color: Colors.grey)),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              FadeAnimation(
                  1,
                  makeItem(
                      image: 'assets/images/w (1).jpg',
                      date: 17,
                      text: "Orphan of Cos",
                      time: "2h 30min")),
              FadeAnimation(
                  1.2,
                  makeItem(
                      image: 'assets/images/w (2).jpg',
                      date: 20,
                      text: "Lady Maria",
                      time: "2h 30min")),
              FadeAnimation(
                  1.4,
                  makeItem(
                      image: 'assets/images/w (3).jpg',
                      date: 21,
                      text: "Gerheman",
                      time: "2h 30min")),
              FadeAnimation(
                  1.6,
                  makeItem(
                      image: 'assets/images/w (4).jpg',
                      date: 22,
                      text: "Blood Minister",
                      time: "2h 30min")),
              FadeAnimation(
                  1.8,
                  makeItem(
                      image: 'assets/images/w (5).jpg',
                      date: 23,
                      text: "Spider Rom",
                      time: "2h 30min")),
            ],
          ),
        ),
      ),
    );
  }

  Widget makeItem({image, date, text, time}) {
    return Row(
      children: <Widget>[
        Container(
          width: 50,
          height: 200,
          margin: EdgeInsets.symmetric(vertical: 10),
          child: Padding(
            padding: EdgeInsets.only(top: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  date.toString(),
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "SEP",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            height: 200,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    image: AssetImage(image), fit: BoxFit.cover)),
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient:
                      LinearGradient(begin: Alignment.bottomLeft, colors: [
                    Colors.black.withOpacity(0.9),
                    Colors.black.withOpacity(0.2),
                  ])),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    text,
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.8),
                        fontSize: 30,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.access_time,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        time,
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
