import 'dart:io';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Donate Now!',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Firo Planner!"),
        ),
        body: Column(
          children: [
            Progress(),
            TaskList(),
          ],
        ));
  }
}

class Progress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text("You are this far away from geting your maximum Plan..."),
      LinearProgressIndicator(value: 0.0),
    ]);
  }
}

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TaskItem(label: "Learn Flutter..."),
        TaskItem(label: "Become good at Flutter..."),
        TaskItem(label: "Mastering Flutter..."),
        TaskItem(label: "Make Something Meaningful With Flutter...")
      ],
    );
  }
}

class TaskItem extends StatefulWidget {
  final String label;

  const TaskItem({Key? key, required this.label}) : super(key: key);

  @override
  State<TaskItem> createState() => _TaskItemState();
}

class _TaskItemState extends State<TaskItem> {
  bool? _value = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
            value: _value,
            onChanged: (newValue) => setState(() => _value = newValue)),
        Text(widget.label),
      ],
    );
  }
}
