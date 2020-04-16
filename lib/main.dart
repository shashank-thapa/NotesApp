import 'package:flutter/material.dart';
import 'models/global.dart';
import 'package:flutter/services.dart';

void main(){
   SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
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
          length: 2,
          child: new Scaffold(
            body: Stack(
                children:<Widget>[
                  TabBarView(
                  children: [
                  new Container(
                    color: darkGreyColor,
                  ),
                  new Container(color: Colors.orange,),

                ],
              ),
              Container(
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft:Radius.circular(50),
                    bottomRight: Radius.circular(50)
                    ),
                    color: Colors.white,
                ),
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("N O T E S", style: noteTitleStyle)
                  ],
                )
              ),
              Container(
                height: 65,
                width: 65,
                margin: EdgeInsets.only(top: 650,left: MediaQuery.of(context).size.width*0.5-34.5),
                child: FloatingActionButton(
                  child: Icon(Icons.add,size: 60,),
                  backgroundColor: darkRed,
                  onPressed: () {}
                ),
              )
              
            ]
            ),
            appBar: AppBar(
              elevation: 0,
                  title: new TabBar(
                tabs: [
                  Tab(
                    icon: new Icon(Icons.home),
                  ),
                  Tab(
                    icon: new Icon(Icons.rss_feed),
                  ),
                ],
                labelColor: darkGreyColor,
                unselectedLabelColor: Colors.blue,
                indicatorSize: TabBarIndicatorSize.label,
                indicatorPadding: EdgeInsets.all(5.0),
                indicatorColor: Colors.transparent,
              ),
              backgroundColor: Colors.white,
            ),
            backgroundColor: Colors.white,
          ),
        ),
      ),
    );
  }
}
