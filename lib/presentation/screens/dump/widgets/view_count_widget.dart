import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ViewCountWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 17.0),
      child: Row(
        children: [
          FaIcon(
            FontAwesomeIcons.chartLine,
            color: Color.fromRGBO(0, 0, 0, 1),
          ),
          SizedBox(
            width: 8,
          ),
          Text('1,532 views of your post',
              style: TextStyle(fontWeight: FontWeight.values[5], fontSize: 16))
        ],
      ),
    );
  }
}
