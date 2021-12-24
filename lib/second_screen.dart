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

  List<String> generateListItems() {
    List<String> list = List.generate(100, (counter) => "item $counter");
    return list;
  }

  Widget createListView() {
    var listItems = generateListItems();
    var listview = ListView.builder(itemBuilder: (context, index) {
      return ListTile(
        leading: Text("$index"),
        title: Text(listItems[index]),
        onTap: () {
          print(listItems[index]);
        },
      );
    });
    return listview;
  }
}
