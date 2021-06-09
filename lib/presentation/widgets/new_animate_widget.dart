import 'package:flutter/material.dart';

class NewAnimateWidget extends StatefulWidget {
  @override
  _NewAnimateWidgetState createState() => _NewAnimateWidgetState();
}

class _NewAnimateWidgetState extends State<NewAnimateWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;
  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    final curvedAnimation = CurvedAnimation(
      parent: controller,
      curve: Curves.bounceIn,
      reverseCurve: Curves.easeOut,
    );
    animation = Tween<double>(begin: 100, end: 200).animate(curvedAnimation)
      ..addListener(() {
        print('value changed ${animation.value}');
        setState(() {});
      })
      ..addStatusListener((status) {
        print(status);
        // if (status == AnimationStatus.completed) {
        //   controller.reverse();
        // } else if (status == AnimationStatus.dismissed) {
        //   controller.forward();
        // }
      });
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: animation.value,
      width: animation.value,
      color: Colors.orange,
    );
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
    print('destroyed');
  }
}
