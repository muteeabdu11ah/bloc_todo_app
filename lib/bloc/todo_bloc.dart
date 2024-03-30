import 'package:bloc/bloc.dart';
class todoEvent{}
class todoBloc extends Bloc<todoEvent, todoState> {
  todoBloc() : super([]) {
    on<todoEvent>((event, emit) {
    });
  }
}