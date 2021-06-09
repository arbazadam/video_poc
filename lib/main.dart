import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:video_app/business/blocs/video_bloc/video_bloc.dart';

import 'package:video_app/presentation/screens/videos/new_screen.dart';

import 'business/blocs/cubit/counter_cubit.dart';

void main() {
  runApp(MyApp());
  // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
  //   statusBarColor: Colors.white,
  // ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          iconTheme: IconThemeData(color: Colors.black),
          primarySwatch: Colors.red),
      // home: SimpleRecorder(),
      home: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (BuildContext context) => VideoBloc(),
          ),
          BlocProvider(
            create: (BuildContext context) => CounterCubit(),
          )
        ],
        //create: (BuildContext context) => VideoBloc(),
        child: NewScreen(),
      ),
    );
  }
}
