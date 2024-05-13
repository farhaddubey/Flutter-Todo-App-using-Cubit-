import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_list/cubit/todo_cubit.dart';
// import 'package:todo_list/todo_cubit.dart';

class AddTodoPage extends StatefulWidget{
  const AddTodoPage({super.key});
  @override
  State<AddTodoPage> createState() => _AddTodoPageState();
}
class _AddTodoPageState extends State<AddTodoPage> {
  final todoTitleController = TextEditingController();
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text('Add Todo'),),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TextField(
              controller: todoTitleController,
              decoration: const InputDecoration(hintText: 'Title'),
            ),
            const SizedBox(height: 10,),
            ElevatedButton(onPressed: (){
              BlocProvider.of<TodoCubit>(context).addError(todoTitleController.text.trim(),
              );
            }, child: const Text('Add')),
          ],
        ),
      ),
    );
  }
}
