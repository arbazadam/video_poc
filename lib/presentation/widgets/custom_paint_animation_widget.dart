import 'package:flutter/material.dart';

class CustompaintAnimation extends StatefulWidget {
  @override
  _CustompaintAnimationState createState() => _CustompaintAnimationState();
}

class _CustompaintAnimationState extends State<CustompaintAnimation> {
  @override
  Widget build(BuildContext context) {
    // return Container(
    //   color: Colors.green,
    // );
    return CustomPaint(
      painter: NewPainter(context),
      child: Container(),
    );
  }
}

class NewPainter extends CustomPainter {
  final context;

  NewPainter(this.context);
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint_0 = new Paint()
      ..color = Color.fromARGB(255, 190, 0, 0)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    Path path_0 = Path();
    path_0.moveTo(size.width * 0.4172500, size.height * 0.2505500);
    path_0.lineTo(size.width * 0.4994500, size.height * 0.3667833);
    path_0.lineTo(size.width * 0.5682667, size.height * 0.2500000);
    path_0.quadraticBezierTo(size.width * 0.6824167, size.height * 0.2357000,
        size.width * 0.7985500, size.height * 0.2966667);
    path_0.cubicTo(
        size.width * 0.7752000,
        size.height * 0.3190333,
        size.width * 0.7521000,
        size.height * 0.3368333,
        size.width * 0.7139333,
        size.height * 0.3516667);
    path_0.cubicTo(
        size.width * 0.7076500,
        size.height * 0.3059000,
        size.width * 0.6054833,
        size.height * 0.3188667,
        size.width * 0.5849500,
        size.height * 0.3333333);
    path_0.quadraticBezierTo(size.width * 0.5637125, size.height * 0.4374000,
        size.width * 0.5000167, size.height * 0.7518167);
    path_0.quadraticBezierTo(size.width * 0.4391750, size.height * 0.4390750,
        size.width * 0.4189000, size.height * 0.3355667);
    path_0.cubicTo(
        size.width * 0.3456667,
        size.height * 0.2990500,
        size.width * 0.2574667,
        size.height * 0.3284333,
        size.width * 0.3000000,
        size.height * 0.3500000);
    path_0.cubicTo(
        size.width * 0.2647833,
        size.height * 0.3447500,
        size.width * 0.2200167,
        size.height * 0.3245667,
        size.width * 0.2014833,
        size.height * 0.3012333);
    path_0.quadraticBezierTo(size.width * 0.3067333, size.height * 0.2453833,
        size.width * 0.4172500, size.height * 0.2505500);
    path_0.close();

    canvas.drawPath(path_0, paint_0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
