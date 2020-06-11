import 'package:flutter/material.dart';
import 'package:todoey/models/task.dart';
import 'package:todoey/screens/add_task.dart';
import 'package:todoey/widgets/task_list.dart';

class TasksScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    List<Task> tasks = [Task(name: 'Test npm'), Task(name: 'Deploy WebApp'), Task(name: 'Setup CI/CD')];
    
    void t(String val) { print('fromconstructor$val'); }

    return Scaffold(
      backgroundColor: Colors.green[500],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
                top: 60.0, left: 30.0, right: 30.0, bottom: 30.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  CircleAvatar(
                    child: Icon(
                      Icons.list,
                      size: 60.0,
                      color: Colors.green[500],
                    ),
                    radius: 50.0,
                    backgroundColor: Colors.white,
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'Todoey',
                    style: TextStyle(
                        fontSize: 50.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    '12 Tasks',
                    style: TextStyle(color: Colors.white, fontSize: 20.0),
                  ),
                  SizedBox(height: 10.0),
                ]),
          ),
          Expanded(
            child: Container(
              // width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0))),
              child: TasksList(tasks),
            ),
          )
        ],
      ),
      floatingActionButton: Container(
        height: MediaQuery.of(context).size.width * 0.2,
        width: MediaQuery.of(context).size.width * 0.2,
        child: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
                context: context,
                builder: (context) => AddTaskScreen(t),
                isScrollControlled: true);
          },
          backgroundColor: Colors.green[500],
          child: Icon(
            Icons.add,
            size: MediaQuery.of(context).size.width * 0.15,
          ),
        ),
      ),
    );
  }
}
