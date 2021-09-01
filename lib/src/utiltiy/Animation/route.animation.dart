import 'package:flutter/material.dart';

enum SlidePosition { fromLeft, fromRight, fromBottom, fromTop }

class RouteAnimation {
  PageRouteBuilder rotationTransition({
    required Widget Function(BuildContext ctx, Animation<double> animation,
            Animation<double> secondaryAnimation)
        screen,
    Duration transitionDuration = const Duration(milliseconds: 300),
    Duration reverseTransitionDuration = const Duration(milliseconds: 300),
  }) {
    const begin = 0.0;
    const end = 1.0;
    final tween = Tween(begin: begin, end: end);
    return PageRouteBuilder(
      pageBuilder: screen,
      transitionDuration: transitionDuration,
      reverseTransitionDuration: reverseTransitionDuration,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        final rotationAnimation = animation.drive(tween);
        return RotationTransition(turns: rotationAnimation, child: child);
      },
    );
  }

  PageRouteBuilder scaleTransition({
    required Widget Function(
      BuildContext ctx,
      Animation<double> animation,
      Animation<double> secondaryAnimation,
    )
        screen,
    Alignment alignment = Alignment.bottomLeft,
    Duration transitionDuration = const Duration(milliseconds: 300),
    Duration reverseTransitionDuration = const Duration(milliseconds: 300),
  }) {
    const begin = 0.0;
    const end = 1.0;
    final tween = Tween(begin: begin, end: end);

    return PageRouteBuilder(
      pageBuilder: screen,
      transitionDuration: transitionDuration,
      reverseTransitionDuration: reverseTransitionDuration,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        final scaleAnimation = animation.drive(tween);
        return ScaleTransition(
          scale: scaleAnimation,
          alignment: alignment,
          child: child,
        );
      },
    );
  }

  PageRouteBuilder fadeTransition({
    required Widget Function(
      BuildContext ctx,
      Animation<double> animation,
      Animation<double> secondaryAnimation,
    )
        screen,
    Duration transitionDuration = const Duration(milliseconds: 300),
    Duration reverseTransitionDuration = const Duration(milliseconds: 300),
  }) {
    const begin = 0.0;
    const end = 1.0;
    final tween = Tween(begin: begin, end: end);
    return PageRouteBuilder(
      pageBuilder: screen,
      transitionDuration: transitionDuration,
      reverseTransitionDuration: reverseTransitionDuration,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        final fadeAnimation = animation.drive(tween);
        return FadeTransition(opacity: fadeAnimation, child: child);
      },
    );
  }

  PageRouteBuilder slideTransition({
    required Widget Function(
      BuildContext ctx,
      Animation<double> animation,
      Animation<double> secondaryAnimation,
    )
        screen,
    SlidePosition slidePosition = SlidePosition.fromBottom,
    Duration transitionDuration = const Duration(milliseconds: 300),
    Duration reverseTransitionDuration = const Duration(milliseconds: 300),
  }) {
    var begin = const Offset(0, 0);
    const end = Offset(0, 0);

    switch (slidePosition) {
      case SlidePosition.fromBottom:
        begin = const Offset(0, 1);
        break;
      case SlidePosition.fromTop:
        begin = const Offset(0, -1);
        break;
      case SlidePosition.fromLeft:
        begin = const Offset(1, 0);
        break;
      case SlidePosition.fromRight:
        begin = const Offset(-1, 0);
        break;
      default:
        begin = const Offset(0, 0);
        break;
    }
    final tween = Tween(begin: begin, end: end);
    return PageRouteBuilder(
      pageBuilder: screen,
      transitionDuration: transitionDuration,
      reverseTransitionDuration: reverseTransitionDuration,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        final offsetAnimation = animation.drive(tween);
        return SlideTransition(position: offsetAnimation, child: child);
      },
    );
  }
}
