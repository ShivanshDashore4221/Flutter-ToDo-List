
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_frontend/Screens/home_screen.dart';
import 'package:todo_frontend/models/tasks_data.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key : key);

  @override
  Widget build(BuildContext context){
    return ChangeNotifierProvider<TasksData>(
      create: (context)=>TasksData(),
      child: const MaterialApp(
        debugShowCheckedModeBanner : false,
        home: HomeScreen(),
      ),
    );
  }
}