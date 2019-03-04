import 'package:flutter/material.dart';
import 'secondpage.dart';
class MyFirstPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return  _MyFirstPageState();
  }
}
class _MyFirstPageState extends State<MyFirstPage>{
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        title: Text("First_Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text("MyFirst_Page"),
            FlatButton (
              child: Text("GotoSecondPage"),
              textColor: Colors.blue,
              onPressed: (){
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) {
                      return new MySecondPage();
                    }));
              },
            ),
          ],
        ),
      ),
    );
  }
}