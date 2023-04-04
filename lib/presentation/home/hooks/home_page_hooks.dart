import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

Animation<double> useCurvedAnimation() {
  final animationController = useAnimationController(
    duration: const Duration(milliseconds: 1500),
  );

  final animation = Tween<double>(begin: 0, end: 15).animate(CurvedAnimation(
    parent: animationController,
    curve: Curves.easeOut,
  ));

  // print("i'm here");

  useEffect(() {
    // print('adding listener and start animation');
    animationController.forward();
    animation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        animationController.reverse();
      } else if (status == AnimationStatus.dismissed) {
        animationController.forward();
      }
    });

    return () {
      // print('dispose controller');
      animationController.dispose();
    };
  }, []);

  return animation;
}