class TaskModel {
  final String? name;
  bool isDone = false;
  TaskModel({required this.name, this.isDone = false});
  void doneChange() {
    isDone = !isDone;
  }
}
