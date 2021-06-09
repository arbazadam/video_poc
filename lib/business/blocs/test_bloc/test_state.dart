part of 'test_bloc.dart';

abstract class TestBlocState extends Equatable {
  const TestBlocState();

  @override
  List<Object> get props => [];
}

class TestBlocInitial extends TestBlocState {}
