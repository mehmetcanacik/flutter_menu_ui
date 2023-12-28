import 'package:flutter/material.dart';

abstract class IState<T extends StatefulWidget> extends State<T>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> scaleAnimation;
  late Animation<double> menuScaleAnimation;
  late Animation<Offset> slideAnimation;
  final duration = const Duration(milliseconds: 400);

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(vsync: this, duration: duration);
    scaleAnimation =
        Tween<double>(begin: 1.0, end: .6).animate(animationController);
    menuScaleAnimation =
        Tween<double>(begin: 0.0, end: 1.0).animate(animationController);
    slideAnimation =
        Tween<Offset>(begin: const Offset(-1, 0), end: const Offset(0, 0))
            .animate(animationController);
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }
}
