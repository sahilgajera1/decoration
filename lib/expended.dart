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
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex:2,
            child:
          Container(
            //width: 100,
            height: 100,
            color: Colors.blue,
          ),
          ),
          Expanded(
            flex: 2,
            child:
            Container(
              //width: 100,
              height: 100,
              color: Colors.red,
            ),
          ),

           Expanded(
             flex: 4,
             child:
              Expanded(
                child:
                Container(
                //    width: 100,
                    height: 100,
                    color: Colors.yellow,
             ),
              ),
           ),
        ],
      )
    );
  }
}
