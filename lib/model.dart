import 'package:flutter/material.dart';
//https://JsonPlaceholder.typicode.com/posts
class Album {
  final int userId;
  final int id;
  final String title;
  Album({
    required this.userId,
    required this.id,
    required this.title,
  });
  factory Album.fromJson(Map<String,dynamic>Json){
    return Album(
      userId: Json[ 'userId'],
      id: Json['id'],
      title: Json['title'],
    );
  }
}