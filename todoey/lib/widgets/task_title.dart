import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function toggleTask;
  // final Task task;

  TaskTile({this.isChecked, this.taskTitle, this.toggleTask});

  // TaskTile({this.task});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
          fontSize: 20.0,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: toggleTask,
      ),
      // trailing: new TaskCheckBox(
      //     isChecked,
      //     (value) => {
      //           setState(() {
      //             isChecked = (isChecked == true) ? false : true;
      //           })
      //         }),
    );
  }
}

// class TaskCheckBox extends StatelessWidget {
//   final bool checkboxState;
//   final Function onValueChanged;

//   TaskCheckBox(this.checkboxState, this.onValueChanged);

//   @override
//   Widget build(BuildContext context) {
//     return Checkbox(
//       activeColor: Colors.lightBlueAccent,
//       value: checkboxState,
//       onChanged: onValueChanged,
//     );
//   }
// }
