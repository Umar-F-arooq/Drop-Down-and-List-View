import 'package:flutter/material.dart';

class ListViewBuilderScreen extends StatefulWidget {
  const ListViewBuilderScreen({super.key});

  @override
  State<ListViewBuilderScreen> createState() => _ListViewBuilderScreenState();
}

class _ListViewBuilderScreenState extends State<ListViewBuilderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('List View Builder'),),
      body: ListView.builder(
        itemCount: 100,
        itemBuilder: (BuildContext context ,int index){
          return Text('S# ${index +1}',style: TextStyle(fontSize: 20),);
        }),
    );
  }
}