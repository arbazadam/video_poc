import 'package:flutter/material.dart';

class AnimateWidget extends StatefulWidget {
  @override
  _AnimateWidgetState createState() => _AnimateWidgetState();
}

class _AnimateWidgetState extends State<AnimateWidget> {
  double opacity = .5;
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Object>(
        stream: getValuesFromList([10, 20, 30, 48, 66, 12, 99]),
        builder: (context, snapshot) {
          return AnimatedContainer(
            curve: Curves.bounceOut,
            duration: Duration(seconds: 1),
            height: snapshot.data as double,
            width: 200,
            decoration: BoxDecoration(color: Colors.green),
          );
        });
  }

  Stream<double> getValuesFromList(List<double> list) async* {
    int x = 0;
    while (true) {
      await Future.delayed(Duration(seconds: 1));
      yield list[x];
      x++;
      if (x == list.length) break;
    }
  }
}
