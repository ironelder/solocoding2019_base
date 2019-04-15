import 'package:flutter/material.dart';

class WriteTodo extends StatefulWidget {
  final String title;


  WriteTodo(this.title);

  @override
  _WriteTodotState createState() => _WriteTodotState();
}
class _WriteTodotState extends State<WriteTodo> {
  String _message = "Hello World";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(title:Text(widget.title),
    ),
    body: Center(
      child : Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text('Title', style: TextStyle(fontSize: 30)),
          Text('Date', style: TextStyle(fontSize: 30)),
          Text('Memo', style: TextStyle(fontSize: 30))
          ]
        ,
        )
      )
    );
  }
}