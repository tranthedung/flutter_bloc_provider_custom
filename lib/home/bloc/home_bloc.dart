import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:bloc/bloc.dart';
part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<HomeEvent>((event, emit) {
      // TODO: implement event handler
    });
    on<HomeClickLoginButtonEvent>(homeClickLoginButtonEvent);
  }

  FutureOr<void> homeClickLoginButtonEvent(
      HomeClickLoginButtonEvent event, Emitter<HomeState> emit) {
    print('Login is successfull');
    emit(HomeClickedLoginButtonActionState());
  }
}
