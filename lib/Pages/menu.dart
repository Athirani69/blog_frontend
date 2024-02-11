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
        title: Row(
          children: [
            Icon(Icons.menu),
            SizedBox(width: 10),
            Text("BLOG MENU"),
          ],
        )
      ),
      body: Container(
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
            SizedBox(height: 10),
            ElevatedButton(onPressed: (){}, child: Text("SIGN IN")),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: (){}, child: Text("SIGN UP"))
          ],
        ),
      ),
    );
  }
}
