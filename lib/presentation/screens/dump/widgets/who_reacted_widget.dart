import 'package:flutter/material.dart';

import 'upper_content_widget.dart';

class WhoReactedWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final listSize = 7;
    return Row(
      children: [
        ...List.generate(
            listSize,
            (index) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: getUserAvatar(15,
                      'https://media-exp1.licdn.com/dms/image/C4E03AQHwHxVrck2iew/profile-displayphoto-shrink_800_800/0/1600097927464?e=1627516800&v=beta&t=Gnx0JCw7BX0pQjecvC6jU8ifop-1f7rIvCp9WA3-HlA'),
                )),
        listSize > 5
            ? CircleAvatar(
                radius: 22,
                backgroundColor: Color.fromRGBO(128, 128, 128, .7),
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.more_horiz,
                    color: Colors.black,
                  ),
                ),
              )
            : Container()
      ],
    );
  }
}
