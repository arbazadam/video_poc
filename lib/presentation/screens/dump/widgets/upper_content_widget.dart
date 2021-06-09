import 'package:flutter/material.dart';

class UpperContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 12.0, top: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          getUserWidget(25),
          SizedBox(
            height: 15,
          ),
          Container(
              margin: EdgeInsets.only(left: 2),
              child: Text('Cc: All the stupid(yet handsome) engineers.')),
          SizedBox(
            height: 20,
          ),
          Text(
            '#development #engineers',
            style: TextStyle(
                color: Color.fromRGBO(14, 118, 168, 1),
                fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}

getUserWidget(double radius) {
  return Row(
    children: [
      getUserAvatar(radius,
          'https://media-exp1.licdn.com/dms/image/C4E03AQHwHxVrck2iew/profile-displayphoto-shrink_800_800/0/1600097927464?e=1627516800&v=beta&t=Gnx0JCw7BX0pQjecvC6jU8ifop-1f7rIvCp9WA3-HlA'),
      SizedBox(
        width: 7,
      ),
      Padding(
        padding: const EdgeInsets.only(top: 2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Arbaz Adam',
                style: TextStyle(
                    color: Colors.black87, fontWeight: FontWeight.w700)),
            SizedBox(
              height: 2,
            ),
            Text(
              'Flutter | Java',
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(
              height: 2,
            ),
            Row(
              children: [
                Text(
                  '10h',
                  style: TextStyle(color: Colors.grey),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 3.7, vertical: .7),
                  child: CircleAvatar(
                      radius: 2.0,
                      backgroundColor: Color.fromRGBO(141, 141, 141, .9)),
                ),
                Icon(
                  Icons.public,
                  color: Color.fromRGBO(0, 0, 0, .6),
                  size: 11.7,
                ),
              ],
            )
          ],
        ),
      )
    ],
  );
}

CircleAvatar getUserAvatar(double radius, String imagePath) {
  return CircleAvatar(
    radius: radius,
    backgroundImage: NetworkImage('$imagePath'),
  );
}
