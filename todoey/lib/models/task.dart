class Task {
  final String name;
  bool isDone;

  Task({this.name, this.isDone = false});

  void toggleDone() {
    if( isDone ) {
      isDone = false;
    } else {
      isDone = true;
    }
  }
}