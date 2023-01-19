import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:const  [
              Text("REgister Screen",style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),),
            ],
          )
        ],
      ),
    );
  }
}
