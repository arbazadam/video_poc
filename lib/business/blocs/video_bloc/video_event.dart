part of 'video_bloc.dart';

abstract class VideoEvent extends Equatable {
  const VideoEvent();

  @override
  List<Object> get props => [];
}

class GetImageFromCamera extends VideoEvent {
  final ImageSource source;
  GetImageFromCamera(this.source);
}
