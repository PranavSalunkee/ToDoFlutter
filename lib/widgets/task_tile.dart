import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String name;
  final void Function() longPressCallback;

  final void Function(bool? checkBoxState) callBack;
  const TaskTile({super.key, required this.isChecked, required this.name, required this.callBack, required this.longPressCallback});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      title: Text(
        name,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: callBack,
        activeColor: Colors.lightBlueAccent,
      ),
    );
  }
}
