import 'package:drop_down_and_listview/Global/global.dart';
import 'package:drop_down_and_listview/Model/student.dart';
import 'package:flutter/material.dart';

class ListViewBuilderStudent extends StatefulWidget {
  const ListViewBuilderStudent({super.key});

  @override
  State<ListViewBuilderStudent> createState() => _ListViewBuilderStudentState();
}

class _ListViewBuilderStudentState extends State<ListViewBuilderStudent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Student '),),
      body: ListView.builder(
        itemCount: slist.length,
        itemBuilder: (context,index){
          Student sobj=slist[index];
          return ListTile(
            onTap: (){

            },
            title: Text('Name ${sobj.name}'),
            subtitle: Text('Semester${sobj.semester}'),
            trailing: IconButton(icon: Icon(Icons.delete),onPressed: (){
              setState(() {
                slist.removeAt(index);
              });
            },),
          );

        }),
    );
  }
}