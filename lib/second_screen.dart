import 'package:flutter/material.dart';

class Secondscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("secondscreen"),
        ),
        body: createListView()
        // Container(alignment: Alignment.bottomRight,padding: EdgeInsets.all(6.0),child: RaisedButton(color: Colors.blue,onPressed: () {Navigator.pop(context);},child: Text("Pre"),),),
        );
  }

  Widget createListView() {
    var listview = ListView(
      children: [
        ListTile(
          leading: Icon(Icons.access_alarm_outlined),
          title: Text("Alarm"),
          subtitle: Text("This is an alarm"),
          trailing: Icon(Icons.attach_money),
          onTap: () {
            print("clicked on alarm");
          },
        ),
        ListTile(
          leading: Icon(Icons.map_outlined),
          title: Text("Map"),
          subtitle: Text("This is a map"),
          trailing: Icon(Icons.attach_money),
        ),
      ],
    );
    return listview;
  }
}
