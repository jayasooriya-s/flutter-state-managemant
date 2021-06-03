import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  TaskTile({
    this.taskTitle,
    this.isChecked,
    this.checkBoxCallBack,
    this.deleteTaskCallBack,
  });

  final String taskTitle;
  final bool isChecked;
  final Function checkBoxCallBack;
  final Function deleteTaskCallBack;
//   @override
//   _TaskTileState createState() => _TaskTileState();
// }

// class _TaskTileState extends State<TaskTile> {
//   bool isChecked = false;
//   void checkBoxCallBack(bool checkboxState) {
//     setState(() {
//       isChecked = checkboxState;
//     });
//   }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.cyan,
        onChanged: checkBoxCallBack,
        value: isChecked,
      ),
      onLongPress: deleteTaskCallBack,
    );
  }
}

// class TaskCheckBox extends StatelessWidget {
//   final bool checkBoxState;
//   final Function toggleBoxState;
//   TaskCheckBox({this.checkBoxState, this.toggleBoxState});
//   @override
//   Widget build(BuildContext context) {
//     return Checkbox(
//       activeColor: Colors.cyan,
//       onChanged: toggleBoxState,
//       value: checkBoxState,
//     );
//   }
// }
