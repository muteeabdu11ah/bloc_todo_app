import 'package:bloc/bloc.dart';
import 'package:todo_app_bloc/models/todo_model.dart';

class TodoCubit extends Cubit<List<todoo>> {
  TodoCubit() : super([]);

  void addTodo(String title) {
   final todo = todoo(name: title, createdat: DateTime.now());
   //state.add(todo);
   emit([...state,todo]);
  }
}
