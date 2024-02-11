import 'package:http/http.dart' as http;

import '../model/blogmodel.dart';

class Api{
  Future<List<Blog>> getdata() async{
    var client =http.Client();
    var api=Uri.parse("http://10.0.21.99:3001/api/post/view/");
    var resp=await client.get(api);
    if(resp.statusCode==200)
      {
        return blogFromJson(resp.body);
      }
    else
      {
        return [];
      }
  }
}