import 'package:flutter/material.dart';

class Secondscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("secondscreen"),
      ),
      body: Container(
        alignment: Alignment.bottomRight,
        padding: EdgeInsets.all(6.0),
        child: RaisedButton(
          color: Colors.blue,
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text("Pre"),
        ),
      ),
    );
  }
}
