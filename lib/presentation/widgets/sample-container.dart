import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class SampleContainer extends StatelessWidget {
  const SampleContainer({Key? key}) : super(key: key);

  // @override
  // Widget build(BuildContext context) {
  //   return Column(
  //     children: [
  //       Container(
  //         height: 200,
  //         width: 200,
  //         decoration: BoxDecoration(
  //           color: Colors.orange,
  //         ),
  //       ),
  //       Expanded(
  //           child: ListView.builder(
  //               itemCount: 8,
  //               itemBuilder: (context, index) {
  //                 return ListTile(title: Text('Arbaz'));
  //               }))
  //     ],
  //   );
  // }

  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      // child: RiveAnimation.network(
      //   'https://public.rive.app/community/runtime-files/375-725-light-like.riv',
      //   fit: BoxFit.cover,
      // ),
    );
  }
}
