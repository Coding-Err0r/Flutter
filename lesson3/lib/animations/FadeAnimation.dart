import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

class FadeAnimation extends StatelessWidget {
  final double delay;
  final Widget child;

  FadeAnimation(this.delay, this.child);

  @override
  Widget build(BuildContext context) {
    final tween = MovieTween();

    tween.tween('opacity', Tween(begin: 0.0, end: 1.0),
        duration: Duration(milliseconds: 500));
    tween.tween('translateY', Tween(begin: 50.0, end: 0.0),
        duration: Duration(milliseconds: 500), curve: Curves.easeOut);

    return PlayAnimationBuilder(
      delay: Duration(milliseconds: (500 * delay).round()),
      duration: tween.duration,
      tween: tween,
      child: child,
      builder: (context, movie, child) => Opacity(
        opacity: movie.get(
            'opacity'), // The method '[]' can't be unconditionally invoked because the receiver can be 'null'. Try making the call conditional (using '?.') or adding a null check to the target ('!').
        child: Transform.translate(
            offset: Offset(0, movie.get('translateY')),
            child:
                child), // The method '[]' can't be unconditionally invoked because the receiver can be 'null'. Try making the call conditional (using '?.') or adding a null check to the target ('!').
      ),
    );
  }
}
