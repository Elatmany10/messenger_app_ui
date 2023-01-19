import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:messenger_app_ui/messenger_screen.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
      return  MaterialApp(
        debugShowCheckedModeBanner: false,
        theme:ThemeData(
          appBarTheme:const AppBarTheme(
             backgroundColor: Colors.black,
            systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: Colors.grey,
              statusBarIconBrightness: Brightness.dark
            )
          )
        ) ,
        home: const MessengerScreen(),
      );
  }
}


class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      leading:const Icon(Icons.menu,color: Colors.black ,size: 30),
      title: const Text("My Flutter App"),
      centerTitle: true,
      actions: const <Widget>[
        Icon(Icons.camera_alt_rounded),
        Icon(Icons.archive),
      ],
    ),
    body: Container(
      width: double.infinity,
      child: Column(
        mainAxisAlignment:MainAxisAlignment.center ,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              color: Colors.red,
              width: 150,
              height: 150,
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.green,
              width: 150,
            ),
          ),
        ],
      ),
    ),

  );
  }
}
