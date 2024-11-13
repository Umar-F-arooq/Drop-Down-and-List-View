import 'package:flutter/material.dart';

class DropDownScreen extends StatefulWidget {
  const DropDownScreen({super.key});

  @override
  State<DropDownScreen> createState() => _DropDownScreenState();
}

class _DropDownScreenState extends State<DropDownScreen> {
  List<String> _countries=["Pakistan","India","China","America"];
  String ? _selectedItem,_selectedCountry;

  List<DropdownMenuItem<String>> menuItems()
  {
    List<DropdownMenuItem<String>> item_list=[];
    for(int i=0;i<_countries.length;i++)
    {
      DropdownMenuItem<String> item=DropdownMenuItem(
        value: _countries[i],
        child: Text(_countries[i]));
      item_list.add(item);

    }
    return item_list;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Drop down'),),
      body: Column(
        children: [
          Container(
            height: 50,
            width: 200,
            child: DropdownButton(
              isExpanded: true,
              value: _selectedItem,
              items: menuItems(), 
              onChanged: (selectedItem){
              print(selectedItem);
              setState(() {
                _selectedItem=selectedItem;
              });
            
            }),
          ),
          SizedBox(height: 10,),
          DropdownButton(
            value: _selectedCountry,
            items: _countries.map((e){
            return DropdownMenuItem<String>(
              value: e,
              child: Text(e));
          }).toList(), onChanged: (selectedItem){
            setState(() {
              _selectedCountry=selectedItem;
            });
          })


        ],
      ),
    );
  }
}