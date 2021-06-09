import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:video_app/business/blocs/cubit/counter_cubit.dart';
import 'package:video_app/business/blocs/video_bloc/video_bloc.dart';
import 'package:video_app/presentation/screens/videos/another_screen.dart';

import 'animation_screen.dart';

class NewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () {
                BlocProvider.of<VideoBloc>(context)
                    .add(GetImageFromCamera(ImageSource.camera));
              },
              child: Text('Get Image')),
          ElevatedButton(
              key: Key('api-button'),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => AnotherScreen(),
                ));
              },
              child: Text('Calling Api')),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => AnimationScreen(),
                ));
              },
              child: Text('Animation')),
          BlocBuilder<VideoBloc, VideoState>(builder: (context, state) {
            print('builder is running');
            if (state is ImagePickedSuccessfulState) {
              return Container(
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  child: Image.file(state.f));
            } else if (state is NoImageSelectedState)
              return Center(child: Text(state.toString()));
            else if (state is VideoInitial)
              return Container();
            else
              return Center(child: CircularProgressIndicator());
          }),
          // BlocListener<CounterCubit, int>(listener: (context, state) {
          //   print('counter cubit builder running');
          // })
        ],
      ),
    );
  }
}
