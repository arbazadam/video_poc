part of 'video_bloc.dart';

abstract class VideoState extends Equatable {
  const VideoState();

  @override
  List<Object?> get props => [];
}

class VideoInitial extends VideoState {}

class ImagePickedSuccessfulState extends VideoState {
  final File f;
  ImagePickedSuccessfulState(this.f);
}

class ImageLoadingState extends VideoState {
  @override
  String toString() => 'ImageLoadingState';
}

class NoImageSelectedState extends VideoState {
  @override
  String toString() => 'NoImageSelected';
}

class ImageFailureState extends VideoState {
  final errorMessage;
  ImageFailureState(this.errorMessage);
}
