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

  var emailText = TextEditingController();
  var passtext = TextEditingController();

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
                    keyboardType: TextInputType.text,
                         controller: emailText,
                         decoration: InputDecoration(
                           hintText: 'Enter email',
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
                          color: Colors.green,
                          width: 4
                      )
                  ),
                           //suffixText: 'username exist',
                           //prefixText: "username",
                           suffixIcon: IconButton(
                             icon: Icon(Icons.remove_red_eye,
                               color: Colors.black,),
                             onPressed: (){
                             },
                           ),
                           prefixIcon: Icon(Icons.phone, color: Colors.orange,),

                  ),
                  ),
                  Container(height: 12,),
                  TextField(
                        keyboardType: TextInputType.number,
                        controller: passtext,
                        obscureText: true,
                        obscuringCharacter: '*',
                        decoration: InputDecoration(
                        hintText: "Enter a password here...",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(11),
                            borderSide: BorderSide(
                                color: Colors.pinkAccent
                            )
                        ),
                      )),
                  ElevatedButton(onPressed:  (){

                    String uemail = emailText.text.toString();
                    String upass =  passtext.text.toString();

                    print("Email: $uemail, password: $upass");

                  }, child: Text(
                    'Login'
                  ))
                ],
              ),
        ))
    );
  }
}
