import 'package:flutter/material.dart';

class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  labelText: ("Enter your name"),
                  border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 10,),
              TextField(
                decoration: InputDecoration(
                    labelText: ("Enter your age"),
                    border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 10,),
              TextField(
                decoration: InputDecoration(
                    labelText: ("Enter your mob"),
                    border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 10,),
              TextField(
                decoration: InputDecoration(
                    labelText: ("Enter your address"),
                    border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 10,),
              TextField(
                decoration: InputDecoration(
                    labelText: ("Enter your pincode"),
                    border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 10,),
              TextField(
                decoration: InputDecoration(
                    labelText: ("Enter your email"),
                    border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 10,),
              TextField(
                decoration: InputDecoration(
                    labelText: ("Enter your Password"),
                    border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 10,),
              ElevatedButton(onPressed: (){}, child: Text("REGISTER")),
              SizedBox(height: 10,),
              ElevatedButton(onPressed: (){}, child: Text("BACK"))
            ],
          ),
        ),
      ),
    );
  }
}
