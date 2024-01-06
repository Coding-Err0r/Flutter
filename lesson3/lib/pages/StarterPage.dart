import 'package:flutter/material.dart';
import 'package:lesson2/animations/FadeAnimation.dart';
import 'package:lesson2/pages/HomePage.dart';
import 'package:page_transition/page_transition.dart';

class StarterPage extends StatefulWidget {
  const StarterPage({super.key});

  @override
  State<StarterPage> createState() => _StarterPageState();
}

class _StarterPageState extends State<StarterPage>
    with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;
  bool _textVisible = true;
  @override
  void initState() {
    // TODO: implement initState
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 100));

    _animation = Tween(begin: 1.0, end: 25.0).animate(_animationController);

    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _animationController.dispose();
    super.dispose();
  }

  void _onTap() {
    setState(() {
      _textVisible = false;
    });
    _animationController.forward().then((value) => Navigator.push(context,
        PageTransition(child: HomePage(), type: PageTransitionType.fade)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/m (5).jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.bottomCenter, colors: [
          Colors.black.withOpacity(0.9),
          Colors.black.withOpacity(0.7),
          Colors.black.withOpacity(0.1),
        ])),
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              FadeAnimation(
                  1,
                  Text(
                    "Taking Order for devlivery",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
              SizedBox(
                height: 10,
              ),
              FadeAnimation(
                  1.2,
                  Text(
                    "See resturants by adding location",
                    style: TextStyle(
                        color: Colors.white, fontSize: 18, height: 1.5),
                  )),
              SizedBox(
                height: 100,
              ),
              FadeAnimation(
                  1.4,
                  ScaleTransition(
                    scale: _animation,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              colors: [
                                Colors.yellow.withOpacity(0.9),
                                Colors.orange.withOpacity(0.7),
                              ])),
                      child: AnimatedOpacity(
                        opacity: _textVisible ? 1.0 : 0.0,
                        duration: Duration(milliseconds: 50),
                        child: MaterialButton(
                          minWidth: double.infinity,
                          padding: EdgeInsets.all(10),
                          onPressed: () => _onTap(),
                          child: Text(
                            "START",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  )),
              SizedBox(
                height: 20,
              ),
              FadeAnimation(
                  1.6,
                  AnimatedOpacity(
                    opacity: _textVisible ? 1.0 : 0.0,
                    duration: Duration(milliseconds: 50),
                    child: Align(
                      child: Text(
                        "Now delivered to your door 24/7",
                        style: TextStyle(color: Colors.white54, fontSize: 16),
                      ),
                    ),
                  )),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
