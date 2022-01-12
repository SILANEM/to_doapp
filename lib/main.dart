import 'package:flutter/material.dart';
import 'package:todo_app/views/home_view.dart';
void main() {
  runApp(ToDoApp()); 
}

class ToDoApp extends StatelessWidget {
  const ToDoApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp( 
      debugShowCheckedModeBanner: false,
      title: 'Contact App',
    theme: ThemeData(
      primarySwatch: Colors.blue),

       home: HomeView(),


    );
      
  
  }
}    