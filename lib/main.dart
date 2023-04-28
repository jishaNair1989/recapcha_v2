import 'package:demo_encryption/env.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Display(),
    );
  }
}

class Display extends StatefulWidget {
  const Display({super.key});

  @override
  State<Display> createState() => _DisplayState();
}

class _DisplayState extends State<Display> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(Env.url),
      ),
      // body: ListView.builder(
      //     itemCount: 10,
      //     // itemCount: Env.comment.length,
      //     itemBuilder: (context, index) {
      //       return ListTile(title: Text(Env.url)
      //           //title: Text(Env.comment[index]),
      //           );
      //     })
    );
    // children: const [Text(Env.comment)],
  }
}
