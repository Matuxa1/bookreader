import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'BookReader'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  MainPage createState() => MainPage();
}

class MainPage extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    //FlutterStatusbarcolor.setStatusBarColor(Colors.black);
    return Scaffold(
      primary: true,
      appBar: AppBar(
        title: Text(widget.title),
        toolbarOpacity: 1.0,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('BookReader'),
              decoration: BoxDecoration(
                color:Colors.blue ,
              ),
            ),
            ButtonBar(
              children: <Widget>[
                FlatButton(
                  child: Text("День/Ночь"),
                  color: Colors.blue,
                  onPressed: () {},
                ),
                FlatButton(
                  child: Text('настройки'),
                  color: Colors.blue,
                  onPressed: () {},
                ),
              ],
            ),
            ListTile(
              leading: Icon(Icons.burst_mode),
              title: Text('Библиотека'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.book),
              title: Text('Полка'),
              onTap: () {},
            )
          ],
        ),
      ),
    );
  }
}
