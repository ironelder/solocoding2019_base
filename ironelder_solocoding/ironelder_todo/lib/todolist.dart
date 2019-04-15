import 'package:flutter/material.dart';
import 'package:ironelder_todo/writetodo.dart';

class TodoList extends StatefulWidget {
  final String title;


  TodoList(this.title);

  @override
  _TodoListState createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  String _message = "Hello World";
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              _moveWriteTodoPage(context);
            }),
        appBar: AppBar(title:Text(widget.title),
        ),
        body: Center(
            child : Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text(_message, style: TextStyle(fontSize: 30)),
                Text('$_counter', style: TextStyle(fontSize: 30)),
                Text('할일 더미 데이터', style: TextStyle(fontSize: 30)),
                Text('할일 더미 데이터', style: TextStyle(fontSize: 30)),
                Text('할일 더미 데이터', style: TextStyle(fontSize: 30)),
                Text('할일 더미 데이터', style: TextStyle(fontSize: 30)),
                Text('할일 더미 데이터', style: TextStyle(fontSize: 30)),
                Text('할일 더미 데이터', style: TextStyle(fontSize: 30)),
                Text('할일 더미 데이터', style: TextStyle(fontSize: 30)),
                Text('할일 더미 데이터', style: TextStyle(fontSize: 30)),
                Text('할일 더미 데이터', style: TextStyle(fontSize: 30)),
                Text('할일 더미 데이터', style: TextStyle(fontSize: 30)),
                Text('할일 더미 데이터', style: TextStyle(fontSize: 30)),
                Text('할일 더미 데이터', style: TextStyle(fontSize: 30)),
                Text('할일 더미 데이터', style: TextStyle(fontSize: 30)),
                Text('할일 더미 데이터', style: TextStyle(fontSize: 30))
              ],
            )
        )
    );
  }

  void _moveWriteTodoPage(BuildContext context){
    Navigator.push(context, MaterialPageRoute(builder: (context) => WriteTodo("Write")));
    
  }
  void _changeMessage(){
    setState(() {
      _message = "Cloud Message";
      _counter++;
    });
  }
}