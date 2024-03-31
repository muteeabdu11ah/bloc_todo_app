import 'package:bloc/bloc.dart';
import 'package:todo_app_bloc/models/todo_model.dart';
class todoEvent{}

class AddTodo extends todoEvent{
  final String name;

  AddTodo({required this.name});
}
class todoBloc extends Bloc<todoEvent, List<todoo>> {
  todoBloc() : super([]) {
    on<AddTodo>((event, emit) {
      final todo = todoo(name: event.name, createdat: DateTime.now());
      emit([...state,todo]);
    });
  }
}