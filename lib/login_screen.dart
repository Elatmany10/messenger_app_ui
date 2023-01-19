import 'package:flutter/material.dart';
import 'package:messenger_app_ui/register_screen.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  bool isSecure=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Login",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              const Text(
                "Login now to enjoy with app",
                style: TextStyle(fontSize: 20, color: Colors.grey),
              ),
              const SizedBox(
                height: 50,
              ),
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.email),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                  label: Text("email"),
                ),
                onTap: () {},
                validator: (value) {
                  return "";
                },
                controller: emailController,
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon:  Icon(isSecure?Icons.lock:Icons.lock_open),
                  suffixIcon: TextButton(
                    child:  Text(isSecure?"show":"hide"),
                    onPressed: (){
                      isSecure = !isSecure;
                      setState(() {

                      });
                    },
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  label: Text("password"),
                ),
                onTap: () {},

                obscureText: isSecure,
                validator: (value) {
                  return "";
                },
                controller: passwordController,
              ),
              const SizedBox(
                height: 50,
              ),
              InkWell(
                onTap: (){
                  print("login success");
                },
                child: Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child:const Center(child: Text("Login",style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),)),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "if you don't have an email",
                    style: TextStyle(fontSize: 17, color: Colors.grey),
                  ),
                   TextButton(
                     onPressed: (){
                     Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterScreen(),),);
                     },
                     child: const Text(
                      "Register",
                  ),
                   ),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
