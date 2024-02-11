import 'package:blog/service/blogservice.dart';
import 'package:flutter/material.dart';

import '../model/blogmodel.dart';

class view extends StatefulWidget {
  const view({super.key});

  @override
  State<view> createState() => _viewState();
}

class _viewState extends State<view> {
  Future<List<Blog>> ? data;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    data=Api().getdata();
  }
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: FutureBuilder(future: data, builder: (context,snapshot){
          if(snapshot.hasData&&snapshot.data!.isNotEmpty)
            {
              return ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context,index){
                    return Card(
                      child: Column(
                        children: [
                            ListTile(
                              title: Text(snapshot.data![index].userId.toJson().toString()),
                              subtitle: Text(snapshot.data![index].post+"\n"+snapshot.data![index].postedDate.toString()),
                            )
                        ],
                      ),
                    );
                  });
            }
          else
            {
              return CircularProgressIndicator();
            }
        })
        ),

    );
  }
}
