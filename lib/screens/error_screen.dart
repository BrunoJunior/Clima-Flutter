import 'package:flutter/material.dart';

class ErrorScreen extends StatefulWidget {
  final Exception error;
  ErrorScreen(this.error);
  @override
  _ErrorScreenState createState() => _ErrorScreenState();
}

class _ErrorScreenState extends State<ErrorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('An error occured'),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Text(widget.error.toString()),
      ),
    );
  }
}
