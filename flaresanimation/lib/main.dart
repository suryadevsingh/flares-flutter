import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  
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
  String animationName = "smile";

  void _smileplease() {
    setState(() {
      if(animationName == "smile"){
        animationName ="frown";
      }else {
        animationName = "smile";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        
        title: Text(widget.title),
      ),
      body: Center(
        
        child: Container(
          width: 900,
          height: 900,
          child: FlareActor(
            'assets/smiley.flr',
          alignment: Alignment.center,
          fit:BoxFit.contain,
          animation: animationName,
          ),
          )
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: _smileplease,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), 
    );
  }
}
