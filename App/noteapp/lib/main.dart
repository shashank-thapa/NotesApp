import 'package:flutter/material.dart';
import 'package:noteapp/UI/Home/home.dart';
import 'models/global.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: darkGreyColor,
    statusBarIconBrightness: Brightness.light,
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Notes App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Notes App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.yellow,
      home: SafeArea(
        child: DefaultTabController(
          length: 1,
          child: new Scaffold(
            body: Stack(children: <Widget>[
              TabBarView(
                children: [
                  HomePage(),
                ],
              ),
              Container(
                  height: 240,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(60),
                          bottomRight: Radius.circular(60)),
                      color: darkGreyColor,
                      boxShadow: [
                        new BoxShadow(
                            color: Colors.black.withOpacity(0.5),
                            blurRadius: 10.0)
                      ]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "N O T E S",
                        style: noteTitleStyle,
                      )
                    ],
                  )),
              Container(
                height: 70,
                width: 70,
                margin: EdgeInsets.only(
                    top: 730,
                    left: MediaQuery.of(context).size.width * 0.5 - 35),
                child: FloatingActionButton(
                    elevation: 0,
                    child: Icon(
                      Icons.add,
                      size: 60,
                    ),
                    backgroundColor: darkRed,
                    onPressed: () {}),
              )
            ]),
            backgroundColor: lightGreyColor,
          ),
        ),
      ),
    );
  }
}
