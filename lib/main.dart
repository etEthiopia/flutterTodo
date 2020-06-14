import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData( 
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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
      debugShowCheckedModeBanner: false,
      home: SafeArea(
              child: DefaultTabController(
          length: 3,
          child: new Scaffold(
            body: Stack(
                          children:<Widget>[TabBarView(
                children: [
                  new Container(
                    color: Colors.grey,
                  ),
                  new Container(color: Colors.orange,),
                  
                  new Container(
                    color: Colors.red,
                  ),
                ], 
              ),
              Container(
                padding: EdgeInsets.only(left: 50),                  
                height:160,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50)
                  ),
                  color: Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Intray"),
                    Container()
                  ]
                )
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
                
                Tab(icon: new Icon(Icons.settings),)
              ],
              labelColor: Colors.yellow,
              unselectedLabelColor: Colors.blue,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorPadding: EdgeInsets.all(5.0),
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
