import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Task{
 late final String name;
 late bool isDone;

 Task({required this.name,this.isDone = false});

 void toggle(){
   isDone = !isDone;
 }

}