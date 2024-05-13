import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_list/models/todo_model.dart';

class TodoCubit extends Cubit<List<Todo>>{
  TodoCubit():super([]);

  void addTodo(String title){
    final todo = Todo(name: title, createdAt: DateTime.now());
    // state.add(todo);
    emit([...state, todo]);
  }
  @override
  void onChange(Change<List<Todo>> change) {
    // TODO: implement onChange
    super.onChange(change);
    print('TodoCubit-------------->$change');
  }
  @override
  void onError(Object error, StackTrace stackTrace) {
    // TODO: implement onError
    super.onError(error, stackTrace);
    print(error);
  }
}
// In cubit we' always need to pass the initial value inside the invocation of super and the datatype after cubit
// Cubit is easier than Bloc
// But bloc is easier while handling large staffs.