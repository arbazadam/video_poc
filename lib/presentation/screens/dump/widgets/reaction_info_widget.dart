import 'package:flutter/material.dart';

class ReactionInfoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              alignment: Alignment.center,
              height: 16,
              width: 16,
              decoration:
                  BoxDecoration(color: Colors.blue, shape: BoxShape.circle),
              child: Container(
                height: 12,
                width: 12,
                child: Image.asset(
                  'assets/li.png',
                ),
              ),
            ),
            SizedBox(
              width: 1.8,
            ),
            Container(
              alignment: Alignment.center,
              height: 16,
              width: 16,
              decoration:
                  BoxDecoration(color: Colors.red, shape: BoxShape.circle),
              child: Container(
                height: 12,
                width: 12,
                child: Image.asset(
                  'assets/heart_icon.png',
                ),
              ),
            ),
            SizedBox(
              width: 1.3,
            ),
            SizedBox(width: 3),
            Text('34', style: TextStyle(color: Colors.grey, fontSize: 12)),
          ],
        ),
        Row(
          children: [
            Text(
              '20 comments',
              style: TextStyle(color: Colors.grey, fontSize: 11),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 3),
              child: CircleAvatar(
                  radius: 1.7,
                  backgroundColor: Color.fromRGBO(141, 141, 141, .9)),
            ),
            Text(
              '10,982 views',
              style: TextStyle(color: Colors.grey, fontSize: 11),
            ),
          ],
        )
      ],
    );
  }
}
