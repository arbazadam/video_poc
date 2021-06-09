import 'dart:ui';

import 'package:flutter/material.dart';

class Stacked extends StatefulWidget {
  @override
  _StackedState createState() => _StackedState();
}

class _StackedState extends State<Stacked> {
  final List<String> images = [
    "https://images.unsplash.com/photo-1512453979798-5ea266f8880c?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80",
    "https://images.unsplash.com/photo-1518684079-3c830dcef090?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=634&q=80",
    "https://images.unsplash.com/photo-1528702748617-c64d49f918af?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80",
    "https://images.unsplash.com/photo-1582672060674-bc2bd808a8b5?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=675&q=80",
  ];

  bool _showPreview = false;
  String _image =
      "https://images.unsplash.com/photo-1533395427226-788cee25cc7b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Stack(
      children: [
        GridView.builder(
          itemCount: images.length,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onLongPress: () {
                print('long press');
                setState(() {
                  _showPreview = true;
                  _image = "${images[index]}";
                });
              },
              onLongPressEnd: (details) {
                setState(() {
                  print('long press end');
                  _showPreview = false;
                });
              },
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  clipBehavior: Clip.hardEdge,
                  child: Image.network("${images[index]}", fit: BoxFit.contain),
                ),
              ),
            );
          },
        ),
        if (_showPreview) ...[
          BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 17.0,
              sigmaY: 17.0,
            ),
            child: Container(
              color: Colors.white.withOpacity(0.6),
            ),
          ),
          Container(
            child: Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Container(
                  color: Colors.red,
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Image.network(
                    _image,
                    // height: 300,
                    // width: 300,
                  ),
                ),
              ),
            ),
          ),
        ],
      ],
    ));
  }
}
