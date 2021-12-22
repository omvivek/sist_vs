import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sist_vs/second_screen.dart';

void main() {
  runApp(MyApp());
  // 1
  // runApp(Center(
  //     child: Text(
  //   "text",
  //   textDirection: TextDirection.ltr,
  // )));
  // 2
  // runApp(MaterialApp(
  //   title: "SIST",
  //   color: Colors.blue,
  //   debugShowCheckedModeBanner: false,
  //   theme: ThemeData(
  //     primarySwatch: Colors.blue,
  //     brightness: Brightness.light
  //   ),
  //   home: Scaffold(
  //     appBar: AppBar(title: Text("First Page"),leading: Icon(Icons.home),centerTitle: true,),
  //     floatingActionButton: FloatingActionButton(child: Icon(Icons.account_circle,size: 35.55,),backgroundColor: Colors.red, onPressed: null,),
  //     body:Center(child: Icon(Icons.fingerprint,color: Colors.blue,size: 50.0,)),
  //     //Text("SIST",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.blue,fontStyle: FontStyle.italic),)
  //   ),
  // ));
  // }
  // 3
//   runApp(MaterialApp(
//     title: "SIST",
//     color: Colors.blue,
//     debugShowCheckedModeBanner: false,
//     theme: ThemeData(primarySwatch: Colors.blue, brightness: Brightness.light),
//     home: Scaffold(
//       appBar: AppBar(
//         title: Text("First Page"),
//         leading: Icon(Icons.home),
//         centerTitle: true,
//       ),
//       floatingActionButton: FloatingActionButton(
//         child: Icon(
//           Icons.account_circle,
//           size: 35.55,
//         ),
//         backgroundColor: Colors.red,
//         onPressed: null,
//       ),
//       body: Center(child: Mypage()),
//     ),
//   ));
// }

// class Mypage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Text("SIST");
//   }
// }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "SIST",
      color: Colors.blue,
      debugShowCheckedModeBanner: false,
      theme:
          ThemeData(primarySwatch: Colors.blue, brightness: Brightness.light),
      home: Page(),
    );
  }
}

class Page extends StatelessWidget {
  //TextEditingController editingController = TextEditingController();
  final _scafoldkey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scafoldkey,
        appBar: AppBar(
          title: Text("First Page"),
          leading: Icon(Icons.home),
          centerTitle: true,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.add,
            color: Colors.white,
            size: 35.55,
          ),
          tooltip: "Profile",
          backgroundColor: Colors.blue,
          onPressed: () {
            var snackbar = SnackBar(
              content: Text("added to list"),
              backgroundColor: Colors.blue,
              action: SnackBarAction(
                label: "Undo",
                textColor: Colors.white,
                onPressed: () {
                  print("undo action");
                },
              ),
            );
            //Scaffold.of(context).showSnackBar(snackbar);
            _scafoldkey.currentState.showSnackBar(snackbar);
          },
        ),
        body: Container(
          alignment: Alignment.bottomRight,
          padding: EdgeInsets.all(6.0),
          child: RaisedButton(
            color: Colors.blue,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Secondscreen()));
            },
            child: Text("Next"),
          ),
        )
        //RaisedButton(onPressed: () {createalert(context);},child: Text("alert"),)
        //Container(color: Colors.blue,height: 200,width: 200,alignment: Alignment.center,margin: EdgeInsets.only(left: 40, top: 40),padding: EdgeInsets.all(55),child: Text("boring !! ",style: TextStyle(backgroundColor: Colors.white, fontSize: 30),),)
        //Container(margin: EdgeInsets.all(16),child: Column(children: [ TextField(controller: editingController,keyboardType: TextInputType.phone,decoration: InputDecoration(hintText: "Enter Phone Number",suffixIcon: Icon(Icons.phone),border: OutlineInputBorder()),),RaisedButton(onPressed: () {print('' + editingController.text);},child: Text("login"),)],)),
        //Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [RaisedButton(onPressed: () {},color: Colors.green,child: Text("next"),),RaisedButton(onPressed: () {},color: Colors.green,child: Text("pre"),)],)
        //Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [Icon(Icons.home),Icon(Icons.list), ],),
        //Center(child: RaisedButton(onPressed: () {print("clicked");},onLongPress: () {print("onlongpress");},color: Colors.red,textColor: Colors.white,child: Text("Know More",style: TextStyle(fontWeight: FontWeight.bold),),)),
        //Icon(Icons.fingerprint,color: Colors.blue,size: 50.0,)
        //Text("SIST",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.blue,fontStyle: FontStyle.italic),)
        );
  }

  //createalert(BuildContext context) {var alertdialog = AlertDialog(backgroundColor: Colors.blue,elevation: 10.0,title: Text("Congrats"),content: Text("you have won iphone 7 plus"),actions: [GestureDetector(child: Text("close"),onTap: () {Navigator.pop(context);},)],);showDialog(context: context,builder: (BuildContext context) {return alertdialog;});}
}
