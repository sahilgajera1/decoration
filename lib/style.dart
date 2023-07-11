import 'package:deco/uihelper/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

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
        primarySwatch: Colors.orange,
        textTheme: TextTheme(
          displayLarge: TextStyle(fontSize: 21, fontWeight: FontWeight.bold, fontFamily: 'FontMain'),
          titleMedium:  TextStyle(fontSize: 21, fontWeight: FontWeight.bold, ),
        )
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
        Column(
          children: [
            Text("Text 1", style: Theme.of(context).textTheme.displayLarge!.copyWith(color: Colors.deepOrange),),
            Text("Text 2", style: mtextstyle11(),),
            Text("Text 3", style: Theme.of(context).textTheme.displayLarge!.copyWith(color: Colors.blue),),
          ],
        ),
    );
  }
}
