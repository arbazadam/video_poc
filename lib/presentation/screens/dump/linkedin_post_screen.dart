import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:video_app/presentation/screens/dump/widgets/reaction_info_widget.dart';
import 'package:video_app/presentation/screens/dump/widgets/view_count_widget.dart';
import 'package:video_app/presentation/screens/dump/widgets/who_reacted_widget.dart';

import 'widgets/reaction_icons.dart';
import 'widgets/upper_content_widget.dart';

class LinkedinPostScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Column(
        children: [
          Expanded(
            child: RawScrollbar(
              thickness: 5,
              thumbColor: Colors.grey,
              child: ListView(
                children: [
                  Expanded(child: UpperContent()),
                  SizedBox(
                    height: 4,
                  ),
                  imageContent(context),
                  postDetails(context),
                ],
              ),
            ),
          ),
          _getCommentsSection()
        ],
      ),
    );
  }

//Posting a comment section
  Widget _getCommentsSection() {
    return Container(
      decoration: BoxDecoration(
          border: Border(
        top: BorderSide(color: Colors.grey[300]!),
      )),
      padding: EdgeInsets.all(5),
      child: Row(
        children: [
          getUserAvatar(18,
              'https://media-exp1.licdn.com/dms/image/C4E03AQHwHxVrck2iew/profile-displayphoto-shrink_800_800/0/1600097927464?e=1627516800&v=beta&t=Gnx0JCw7BX0pQjecvC6jU8ifop-1f7rIvCp9WA3-HlA'),
          SizedBox(
            width: 8,
          ),
          Expanded(
            child: _getCommentsTextField(),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  child: Text('@',
                      style: TextStyle(fontSize: 20, color: Colors.grey[800])),
                ),
                Text('Post',
                    style: TextStyle(fontSize: 20, color: Colors.grey[400]))
              ],
            ),
          ),
        ],
      ),
    );
  }

  TextField _getCommentsTextField() {
    return TextField(
      cursorColor: Colors.black,
      decoration: InputDecoration(
          hintText: 'Leave your thoughts here...',
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none),
    );
  }
}

Widget imageContent(BuildContext context) {
  return Container(
    child: Image.network(
        'https://media-exp1.licdn.com/dms/image/C5622AQGTu6kdBcVY9w/feedshare-shrink_1280/0/1621837894068?e=1624492800&v=beta&t=LqWWQMuFQvsnaq58wQ2VBRBtWPjRDpPillPr60rRMTw'),
    decoration: BoxDecoration(color: Colors.grey[300]),
    height: MediaQuery.of(context).size.height * .60,
  );
}

AppBar appBar() {
  return AppBar(
      backgroundColor: Colors.white,
      elevation: 3,
      shadowColor: Colors.black45,
      leading: Icon(
        Icons.arrow_back_sharp,
        color: Colors.black,
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(Icons.more_vert_sharp, color: Colors.black),
        ),
      ]);
}

Widget postDetails(BuildContext context) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 12),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ReactionInfoWidget(),
        SizedBox(height: 2),
        Divider(
          thickness: 1,
          color: Colors.grey[300],
        ),
        ReactionWithIcons(),
        ViewCountWidget(),
        Padding(
          padding: const EdgeInsets.only(left: 4.0),
          child: Text(
            'Reactions',
            style: TextStyle(fontSize: 15),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        WhoReactedWidget(),
        SizedBox(
          height: 5,
        ),
        Row(
          children: [
            Text(
              'Comments',
              style: TextStyle(fontSize: 16),
            ),
            _getMostRelevantButton(),
          ],
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
        ),
        // _getCommentContainer(context),
        SizedBox(
          height: 8,
        ),
      ],
    ),
  );
}

RawMaterialButton _getMostRelevantButton() {
  return RawMaterialButton(
    elevation: 0,
    fillColor: Colors.transparent,
    splashColor: Colors.grey,
    textStyle: TextStyle(color: Colors.black),
    child: Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Text('Most Relevant'),
        SizedBox(
          width: 3,
        ),
        Icon(
          Icons.unfold_more,
          size: 18,
        )
      ],
    ),
    onPressed: () {},
  );
}

// Widget _getCommentContainer(BuildContext context) {
//   return ListTile(
//     leading: getUserWidget(15),
//     title: _getCommentContainer(context),
//   );

// return Container(
//   width: MediaQuery.of(context).size.width,
//   height: MediaQuery.of(context).size.height * .1,
//   child: Stack(
//     children: [
//       Positioned(
//         top: 5,
//         child: getUserAvatar(18,
//             'https://media-exp1.licdn.com/dms/image/C4E03AQHwHxVrck2iew/profile-displayphoto-shrink_800_800/0/1600097927464?e=1627516800&v=beta&t=Gnx0JCw7BX0pQjecvC6jU8ifop-1f7rIvCp9WA3-HlA'),
//       ),
// Positioned(
//   child: _getCommentsContainer(),
//   left: 40,
// )
//     ],
//   ),
// );
//}

_getCommentsContainer() {
  return Container(
    child: Stack(
      children: [
        _getCommentInfo(),
        Positioned(
          right: 0,
          child: Icon(
            Icons.more_vert,
            color: Colors.black,
          ),
        )
      ],
    ),
    padding: EdgeInsets.all(10.0),
    decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(6),
          bottomLeft: Radius.circular(6),
          bottomRight: Radius.circular(6),
        )),
  );
}

Widget _getCommentInfo() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        children: [
          Text(
            'Safyian Mughal',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
      Text(
        'Flutter Developer at Inspireuplift IT solution',
        style: TextStyle(color: Colors.grey),
      ),
      Text(
        '8h',
        style: TextStyle(color: Colors.grey),
      ),
      SizedBox(height: 9),
      Text('Heheh')
    ],
  );
}
