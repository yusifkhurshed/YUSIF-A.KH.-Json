import 'package:flutter/material.dart';
import 'services.dart';
import 'model.dart';
void main()=> runApp(const MyApp());
class MyApp extends StatefulWidget{
  const MyApp({super.key});
  @override
  State<MyApp> createState()=> _MyAppState();

}
  class _MyAppState extends State<MyApp>{
    late Future<Album> futerAlbum;
    @override
    void initState(){
      super.initState();
      futerAlbum=getData();
    }
    @override
    Widget build(BuildContext context){
      return MaterialApp(
        home: Scaffold(appBar: AppBar(title: const Text('Fetch Data Example'),),
        body:Center(child: FutureBuilder<Album>(future: futerAlbum,
        builder: (context, snapshot) {
          if(snapshot.hasError==true){
            return Text(snapshot.error.toString());
            }else if(snapshot.hasData==true){
              return Column(children: [
                Text(snapshot.data!.userId.toString()),
                Text(snapshot.data!.id.toString()),
                Text(snapshot.data!.title),
              ],);}
return const CircularProgressIndicator();
            },
        ),
        ),
        ),
      );
    }
  }