import'dart:convert';
import'dart:html';
import'package:http/http.dart'as http;
import'model.dart';

Future<Album>getData()async{
  final response=await http.get(Uri.parse('http://jsonplaceholder.typicode.com/albums/1'));
  if(response.statusCode==200){
    final y=jsonDecode(response.body);
    final Album x=Album.fromJson(y);
    return x;
  }else{
    throw Exception('Faild to load album');
  }

}