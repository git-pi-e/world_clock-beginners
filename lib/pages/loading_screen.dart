import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void getData() async{

    Response response = await get(Uri.parse('https://jsonplaceholder.typicode.com/todos/1'));
    Map data = jsonDecode(response.body);
    print(data);
    print(data['title']);
  }

  @override
  void initState() {
    
    super.initState();
    print('initState func ran part 1');
    getData();
    print('look bruv, I\' outside a async func, so imma go print myself');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('Loading.....'),
    );
  }
}
