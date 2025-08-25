import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {

  List toDoList = [

  ];

  // reference the box
  final _mybox = Hive.box('mybox');

  // run this method if this is the 1st time ever opening this app
  void createInitialData() {
    // list of todo tasks
    toDoList = [
      ["HBS", true],
      ["Sport", false],
      ["Frensh", false],
      ["2 purposes", false],
      ["buisiness (Vision, Mission)", true],
    ];
  }

  // load the data form database
  void loadData() {
    toDoList = _mybox.get("TODOLIST");
  }

  // update the database
  void updateDataBase() {
    _mybox.put("TODOLIST", toDoList);
  }
}