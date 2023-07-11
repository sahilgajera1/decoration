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
        primarySwatch: Colors.lightGreen,
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
        body: Center(
          child: Container(
              width: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    enabled: true,
                       decoration: InputDecoration(
                           focusedBorder: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(11),
                           borderSide: BorderSide(
                           color: Colors.orange,
                           width: 4
              )
                      ),
                           enabledBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(11),
                         borderSide: BorderSide(
                             color: Colors.blueAccent,
                             width: 4
                         )
               ),
                           disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: BorderSide(
                          color: Colors.pinkAccent,
                          width: 4
                      )
                  ),
                           suffixText: 'username exist',
                           //suffixIcon: IconButton(
                            // icon: Icon(Icons.),
                          // )

                  ),
                  ),
                  Container(height: 11,),
                  TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(11),
                            borderSide: BorderSide(
                                color: Colors.pinkAccent
                            )
                        ),
                      )),
                ],
              ),
        ))
    );
  }
}
