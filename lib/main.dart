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
      body: Container(
          width: double.infinity,
          height: double.infinity,
          // color: Colors.lightBlueAccent,
          child:Center(
            child: Container(
            width: 150,
            height: 150,
            //color: Colors.blueGrey,
            decoration: BoxDecoration(
              color: Colors.blueGrey,
            //   borderRadius: BorderRadius.circular(21),
              border: Border.all(
                width: 5,
                color: Colors.black
              ),

              boxShadow: [
                BoxShadow(
                  blurRadius: 51,
                  color: Colors.grey,
                  spreadRadius: 20
                )
              ],
              shape: BoxShape.circle
              //borderRadius: BorderRadius.only(topLeft: Radius.circular(40),
            //  bottomRight: Radius.circular(40))
            ),
        ),
          ),
      ),
    );
  }
}
