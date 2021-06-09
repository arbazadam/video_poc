import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'test_event.dart';
part 'test_state.dart';

class TestBlocBloc extends Bloc<TestBlocEvent, TestBlocState> {
  TestBlocBloc() : super(TestBlocInitial());

  @override
  Stream<TestBlocState> mapEventToState(
    TestBlocEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
