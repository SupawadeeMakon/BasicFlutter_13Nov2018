import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
//Explicit
  var titleName = 'Basic Flutter';
  var messageString =
      'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of ';
  var paddingDoule = 35.0;

  var friend1String = 'Doramon';
  var friend2String = 'Nopita';
  var friend3String = 'Sunako';

  @override
  Widget build(BuildContext context) {

    //Demo Create Text Widget
    Text friend1Text = new Text(friend1String);
    Text friend2Text = new Text(friend2String);
    Text friend3Text = new Text(friend3String);

    //Widget สร้างจานหนึ่งใบวางบนบนโต๊ะอาหารเพื่อเลื่อนได้สะดวก
    Widget widgetTextmessage = new Container(
      padding: new EdgeInsets.all(paddingDoule),
      child: new Text(
          messageString), //padding: new EdgeInsets.all(value) เว้นจากขอบแยกเป็น 4 ด้าน
    );


  //Demo Create Widget for body
    Widget widgetMyFirend = new Container(
      child: new Row(
        children: <Widget>[
          friend1Text,
          friend2Text,
          friend3Text
        ],
      ),
    ); //บังคับ Row ข้างในจะเป็น chidren



    return new MaterialApp(
      title: titleName,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(titleName),
        ),
        body: widgetMyFirend,
      ),
    );
  }
}
