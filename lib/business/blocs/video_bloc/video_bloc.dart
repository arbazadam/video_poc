import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:image_picker/image_picker.dart';

part 'video_event.dart';
part 'video_state.dart';

class VideoBloc extends Bloc<VideoEvent, VideoState> {
  VideoBloc() : super(VideoInitial());

  @override
  Stream<VideoState> mapEventToState(
    VideoEvent event,
  ) async* {
    if (event is GetImageFromCamera) {
      yield* _mapGetImageFromCamera(event);
    }
  }

  Stream<VideoState> _mapGetImageFromCamera(GetImageFromCamera event) async* {
    yield ImageLoadingState();
    try {
      if (event.source == ImageSource.camera) {
        final picker = ImagePicker();
        final pickedFile = await picker.getImage(source: event.source);
        if (pickedFile != null) {
          File f = File(pickedFile.path);
          yield ImagePickedSuccessfulState(f);
        } else {
          yield NoImageSelectedState();
        }
      }
    } catch (e) {
      yield ImageFailureState(e.toString());
    }
  }
}
