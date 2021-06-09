import 'package:flutter/material.dart';

class CommentReactWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisSize: MainAxisSize.min,
      children: [
        GestureDetector(
          child: Text(
            'Like',
            style: TextStyle(
              color: Color.fromRGBO(14, 118, 168, 1),
            ),
          ),
        ),
        SizedBox(
          width: 8,
        ),
        CircleAvatar(
            backgroundColor: Color.fromRGBO(103, 93, 93, .8), radius: 2.3),
        SizedBox(
          width: 8,
        ),
        Container(
          alignment: Alignment.center,
          height: 15,
          width: 15,
          decoration: BoxDecoration(color: Colors.blue, shape: BoxShape.circle),
          child: Container(
            height: 11,
            width: 11,
            child: Image.asset(
              'assets/li.png',
            ),
          ),
        ),
        SizedBox(
          width: 4,
        ),
        Text('1'),
        SizedBox(
          width: 8,
        ),
        Container(
          color: Color.fromRGBO(128, 128, 128, .6),
          height: 14,
          width: 1.3,
          child: VerticalDivider(),
        ),
        SizedBox(
          width: 8,
        ),
        Text('Reply')
      ],
    );
  }
}
