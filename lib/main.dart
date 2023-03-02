import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // Transparent status bar

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent, // Transparent status bar
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // remove a DEBUG banner in Flutter App
      title: 'name_task_manager', // name displayed in task manager
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true, // displays the AppBar title in the center
          backgroundColor: const Color(0xffF2F3F4), // AppBar background color
          leading: const Icon(
              Icons.arrow_back,
              color: Colors.black),
          title: const Text(
            'AppBar title',
            style: TextStyle(color: Colors.black)),
        ),
        body: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Container( // Widget 1: background image
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/img/iceberg.jpg'),
                  fit: BoxFit.cover // As small as possible while still covering the entire target box.
                )
              ),
            ),
            Container( // Widget 2: fringe dark
              height: 70.0,
              color: Colors.black38,
            ),
            Container( // Widget 3: text
              child: const Text(
                'Hello Flutter',
                style: TextStyle(color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.bold),
              )
            )
          ]
        )
      )
    );
  }
}