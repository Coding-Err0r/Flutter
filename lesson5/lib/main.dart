import 'package:flutter/material.dart';
import 'package:lesson2/FindEvent.dart';
import 'package:lesson2/animations/FadeAnimation.dart';
import 'package:page_transition/page_transition.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ));

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late AnimationController _scaleController;
  late Animation<double> _scaleAnimation;
  bool hide = false;

  @override
  void initState() {
    // TODO: implement initState
    _scaleController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));

    _scaleAnimation = Tween<double>(
      begin: 1.0,
      end: 50.0,
    ).animate(_scaleController)
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          Navigator.push(
              context,
              PageTransition(
                  child: FindEvent(), type: PageTransitionType.topToBottom));
        }
      });
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _scaleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/images/m (5).jpg'),
          fit: BoxFit.cover,
        )),
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(begin: Alignment.bottomCenter, colors: [
            Colors.black.withOpacity(0.9),
            Colors.black.withOpacity(0.6),
            Colors.black.withOpacity(0.8),
            Colors.black.withOpacity(0.3),
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
                      "Learn more about the characters in Bloodborne",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 50,
                          fontWeight: FontWeight.bold),
                    )),
                SizedBox(
                  height: 20,
                ),
                FadeAnimation(
                    1.2,
                    Text(
                      "Learn more about the world of hunters",
                      style: TextStyle(
                          color: Colors.grey.withOpacity(0.7),
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    )),
                SizedBox(
                  height: 150,
                ),
                FadeAnimation(
                  1.4,
                  InkWell(
                    onTap: () {
                      setState(() {
                        hide = true;
                      });
                      _scaleController.forward();
                    },
                    child: AnimatedBuilder(
                        animation: _scaleController,
                        builder: (context, child) => Transform.scale(
                              scale: _scaleAnimation.value,
                              child: Container(
                                height: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.red[600]),
                                child: Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 20.0),
                                  child: hide == false
                                      ? Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Text(
                                              "Bloodborn Wiki",
                                              style: TextStyle(
                                                color: Colors.white,
                                              ),
                                            ),
                                            Icon(
                                              Icons.arrow_forward,
                                              color: Colors.white,
                                            ),
                                          ],
                                        )
                                      : Container(),
                                ),
                              ),
                            )),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
