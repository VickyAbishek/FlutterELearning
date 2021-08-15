import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  final TextEditingController textController = new TextEditingController();
  final Function appendTask;

  AddTaskScreen(this.appendTask);

  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: 
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: Container(
        color: Color(0xFF737373),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.8,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 30.0,
              ),
              Text(
                'Add Task',
                style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.green[500],
                    fontWeight: FontWeight.bold),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    TextField(
                      controller: textController,
                      autofocus: true,
                      textAlign: TextAlign.center,
                      onSubmitted: appendTask,
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.width * 0.15,
                      color: Colors.green[500],
                      child: RaisedButton(
                          child: Text(
                            'ADD',
                            style:
                                TextStyle(color: Colors.white, fontSize: 20.0),
                          ),
                          onPressed: appendTask
                          ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
