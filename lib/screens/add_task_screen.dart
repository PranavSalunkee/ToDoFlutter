import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:todoey/model/task.dart';
import 'package:provider/provider.dart';
import 'package:todoey/model/task_data.dart';

class AddTaskScreen extends StatefulWidget {
  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  late final String taskName;

  final TextEditingController taskController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 30, horizontal: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 25,
                fontWeight: FontWeight.w400),
          ),
          TextField(
            autofocus: true,
            controller: taskController,
            decoration: InputDecoration(
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.blue, // Example color
                ),
              ),
            ),

           onSubmitted: (String newValue) {

           },
          ),
          SizedBox(height: 20,),
          TextButton(
            onPressed: () {
              taskName = taskController.text;
              Provider.of<TaskData>(context, listen: false)
                  .addTask(taskName);
              Navigator.pop(context); // Pop navigation after adding


            },
            child: Text('Add',style: TextStyle(color: Colors.white),),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                  Colors.lightBlueAccent), // Set to your desired color
            ),
          )
        ],
      ),
    );
  }
}
