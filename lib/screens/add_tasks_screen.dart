import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/task_data.dart';

class AddTaskScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    String newTaskTitle;
    TaskData data = Provider.of<TaskData>(context);

    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 40.0,
                color: Colors.lightBlueAccent,
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newText){
                newTaskTitle = newText;
              },
            ),
            SizedBox(height: 20.0,),
            FlatButton(
              color: Colors.lightBlueAccent,
              child: Text('Add',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onPressed: (){
                data.addToList(newTaskTitle);
//                Provider.of<TaskData>(context).addToList(newTaskTitle);
                Navigator.pop(context);
              }
            ),
          ],
        ),
      ),
    );
  }
}
