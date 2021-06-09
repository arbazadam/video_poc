import 'package:flutter/material.dart';
import 'package:video_app/presentation/widgets/custom_paint_animation_widget.dart';
import '../../widgets/new_animate_widget.dart';

class AnotherScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //NewAnimateWidget(),
            Expanded(child: CustompaintAnimation()),
          ],
        ));
  }
}
