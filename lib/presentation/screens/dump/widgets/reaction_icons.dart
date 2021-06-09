import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ReactionWithIcons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _getReactionWithIcons();
  }
}

Widget _getReactionWithIcons() {
  return Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        getReactionType('Like',
            Icon(FontAwesomeIcons.thumbsUp, size: 13.4, color: Colors.black)),
        getReactionType('Comment',
            Icon(FontAwesomeIcons.comment, size: 13.4, color: Colors.black)),
        getReactionType(
          'Share',
          Icon(FontAwesomeIcons.share, size: 13.4, color: Colors.black),
        ),
        getReactionType(
          'Send',
          Icon(
            FontAwesomeIcons.paperPlane,
            size: 13.4,
            color: Colors.black,
          ),
        )
      ],
    ),
  );
}

Widget getReactionType(String title, Icon icon) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      icon,
      SizedBox(height: 3),
      Text(
        '$title',
        style: TextStyle(fontSize: 13),
      ),
    ],
  );
}
