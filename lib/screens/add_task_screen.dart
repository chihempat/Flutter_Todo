import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/task_data.dart';
import 'package:provider/provider.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String task;
    return Container(
      color: Color.fromRGBO(117, 117, 117, 1),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Add Task',
              style: TextStyle(color: Colors.lightBlueAccent, fontSize: 25),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: TextField(
                  cursorColor: Colors.lightBlueAccent,
                  autofocus: true,
                  onChanged: (value) {
                    task = value;
                  }),
            ),
            SizedBox(
              height: 20,
            ),
            FlatButton(
              onPressed: () {
                Provider.of<TaskData>(context, listen: false).changeData(task);
                Navigator.pop(context);
              },
              child: Text("ADD"),
              textColor: Colors.white,
              color: Colors.lightBlueAccent,
            )
          ],
        ),
      ),
    );
  }
}
