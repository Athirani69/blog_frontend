import 'package:blog/Pages/signup.dart';
import 'package:blog/Pages/view.dart';
import 'package:flutter/material.dart';

class menu extends StatefulWidget {
  const menu({super.key});

  @override
  State<menu> createState() => _menuState();
}

class _menuState extends State<menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.limeAccent.withOpacity(.2),
        title: Row(
          children: [
            Icon(Icons.menu),
            SizedBox(width: 10),
            Text("BLOG MENU"),
          ],
        )
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.limeAccent.withOpacity(.3),
              Colors.black.withOpacity(.2)
            ]
          )
        ),
        padding: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: ("Enter emailid"),
                border: OutlineInputBorder()
              ),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                  labelText: ("Enter Password"),
                  border: OutlineInputBorder()
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              width: 200,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder()
                    ),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>view()));
                    }, child: Text("SIGN IN",style: TextStyle(color: Colors.limeAccent),))),
            SizedBox(height: 10,),
            SizedBox(
              width: 200,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder()
                  ),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>signup()));
                  }, child: Text("SIGN UP",style: TextStyle(color: Colors.limeAccent),)),
            )
          ],
        ),
      ),
    );
  }
}
