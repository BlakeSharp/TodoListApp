import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:todo_list_app/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Changing the top portion of the screen to be transparent
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(systemNavigationBarColor: Colors.transparent));

    //return the app with the title being ToDo App, homescreen being Home in screens
    return MaterialApp(
      //top right banner to not show up
      debugShowCheckedModeBanner: false,
      title: 'ToDo App',
      home: Home(),
    );
  }
}
