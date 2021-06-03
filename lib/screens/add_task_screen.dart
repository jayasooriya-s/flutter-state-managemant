import 'package:flutter/material.dart';
import 'package:todoapp/models/task_data.dart';
import 'package:provider/provider.dart';

class AddTaskScreen extends StatefulWidget {
  @override
  _AddTaskScreenState createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  @override
  Widget build(BuildContext context) {
    String newTaskTitle = '';
    TextEditingController taskText = TextEditingController();

    return SingleChildScrollView(
      child: Container(
        color: Color(0xff757575),
        child: Container(
          height: 600,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Add Task ',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.cyan,
                ),
              ),
              TextField(
                // autofocus: true,
                textAlign: TextAlign.center,
                //controller: taskText,

                onChanged: (newText) {
                  setState(() {
                    newTaskTitle = newText;
                  });

                  print(newTaskTitle);
                },
              ),
              // ignore: deprecated_member_use
              FlatButton(
                color: Colors.cyan,
                child: Text(
                  'Add',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  print(newTaskTitle);

                  // newTaskTitle = taskText.text;
                  Provider.of<TaskData>(context, listen: false)
                      .addTask(newTaskTitle);
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
