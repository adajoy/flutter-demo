import 'package:flutter/material.dart';

void main ()=> runApp(App());

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'ssd',
      home: new Scaffold(
        appBar: AppBar(
          title: Text('im title'),
        ),
        body: new Center(
          child: Counter(),
        ),
      ),
    );
  }
}

class Counter extends StatefulWidget{
  Counter({Key key}) : super(key:key);
  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter>{
  int _count = 0;

  _increment(){
    setState(() {
     _count++; 
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Center(
        child: Text('$_count'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: _increment,
      ),
    );
  }
}