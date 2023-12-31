import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:week6/Models/post_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<post_model> postList = [];
  Future<List<post_model>> getPostApi ()async{
  final res = await http.get( Uri.parse('https://jsonplaceholder.typicode.com/posts'));
  var data = jsonDecode(res.body.toString());
  if(res.statusCode==200){
   for(Map<String, dynamic> i in data){
    postList.add(post_model.fromJson(i));
   }
   return postList;
  }else{
      return postList;
  }
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Api course'),
      ),
      body: Column(
        children: [ 
          Expanded( 
          child :FutureBuilder(
            future: getPostApi(),
            builder: (context , snapshot){
            if (!snapshot.hasData){
              return const Text('Loding');
            }else{
              return ListView.builder(
                itemCount: postList.length,
                itemBuilder:(context,index){
                 return Card(
                  child:Padding(padding: const EdgeInsets.all(8.0),
                  child : Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Title :'),
                      Text(postList[index].title.toString() ),
                       Text('Body :'),
                      Text(postList[index].body.toString() )
                    ],
                  )
                 )
                 );
              } ); 
            }
          },
          ),
          )
        ],
      ), 
    );
  }
}