class ToDo {
  String? id;
  String? todoText;
  bool isDone;

  ToDo({required this.id, required this.todoText, this.isDone = false});
  static List<ToDo> todoList() {
    return [
      ToDo(id: '01', todoText: 'Todo Task 1', isDone: true),
      ToDo(id: '02', todoText: 'Todo Task 2', isDone: true),
      ToDo(
        id: '03',
        todoText: 'Todo Task 3',
      ),
      ToDo(
        id: '04',
        todoText: 'Todo Task 4',
      ),
      ToDo(
        id: '05',
        todoText: 'Todo Task 5',
      ),
      ToDo(id: '06', todoText: 'Todo Task 6', isDone: true),
    ];
  }
}
