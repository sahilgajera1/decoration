import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}




class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}


class MyHomePage extends StatefulWidget {
   const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(widget.title),
        ),
        body:
        Container(
            color: Colors.yellow,
            //margin: EdgeInsets.all(40),
            margin: EdgeInsets.only(top: 50, right: 50, left: 50,bottom: 50),
            child:
            Padding(
              padding: EdgeInsets.all(11),
              child: Text("margin padding", style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold, color: Colors.white),
              ),
            )
        ),
    );
  }
}
