import 'package:flutter/material.dart';

class ListViewScreen extends StatefulWidget {
  const ListViewScreen({super.key});

  @override
  State<ListViewScreen> createState() => _ListViewScreenState();
}

class _ListViewScreenState extends State<ListViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('List View Example'),),
      body: ListView(
       // scrollDirection: Axis.horizontal,
        children: [
          Container(margin: EdgeInsets.all(10),
          height: 100,width: 100,color: Colors.orange,),
          Container(margin: EdgeInsets.all(10),
          height: 100,width: 100,color: Colors.blue,),
          Container(margin: EdgeInsets.all(10),
          height: 100,width: 100,color: Colors.orange,),
          Container(margin: EdgeInsets.all(10),
          height: 100,width: 100,color: Colors.blue,),
          Container(margin: EdgeInsets.all(10),
          height: 100,width: 100,color: Colors.orange,),
          Container(margin: EdgeInsets.all(10),
          height: 100,width: 100,color: Colors.blue,)
        ],
      ),
    );
  }
}