import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app_bloc/bloc/todo_bloc.dart';
import 'package:todo_app_bloc/cubit/todo_cubit.dart';
import 'package:todo_app_bloc/models/todo_model.dart';

class TodoList extends StatelessWidget {
  const TodoList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo List'),
      ),
      body: BlocBuilder<todoBloc, List<todoo>>(
        builder: (context, state) {
          return ListView.builder(
              itemCount: state.length, itemBuilder: (context, index) {
                final todo = state[index];
                return ListTile(
                  title: Text(todo.name),
                  trailing: Text(todo.createdat.toString()),
                );
              });
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/add-todo');
        },
        tooltip: 'Add Todo',
        child: const Icon(Icons.add),
      ),
    );
  }
}
