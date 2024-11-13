import 'package:drop_down_and_listview/Global/global.dart';
import 'package:drop_down_and_listview/Model/student.dart';
import 'package:flutter/material.dart';

class StudentFilterScreen extends StatefulWidget {
  const StudentFilterScreen({super.key});

  @override
  State<StudentFilterScreen> createState() => _StudentFilterScreenState();
}

class _StudentFilterScreenState extends State<StudentFilterScreen> {
  List<String> drop_down_options=["All","1","2","3","4","5","6","7","8"];
  String selected="All";
  List<Student> filtered=slist;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Student View'),),
      body: Column(
        children: [
          Container(
            height: 100,
            child: Row(children: [
              Text('Select Semester'),
              DropdownButton(
                value: selected,
                items: drop_down_options.map((e){
                return DropdownMenuItem(
                  value: e,
                  child: Text(e));
              }).toList(), onChanged: (selectedItem){
                setState(() {
                  selected=selectedItem!;
                  if(selected=="All"){
                    filtered=slist;
                  }
                  else{
                    int semester=int.parse(selected);
                  filtered=  slist.where((element) =>
                              element.semester==semester).toList();
                  }
                });
              })
            ],),
          ),
          Expanded(child: Container(
            child: ListView.builder(
              itemCount: filtered.length,
              itemBuilder: (context,index){
                Student sobj=filtered[index];
                return ListTile(
                  title:Text( sobj.name),
                  subtitle: Text('CGPA ${sobj.cgpa}'),
                );
              }),
          ))

        ],
      ),
    );
  }
}