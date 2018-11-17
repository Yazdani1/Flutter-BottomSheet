import 'package:flutter/material.dart';

class DataItem{

  mainBottom(BuildContext context){

    showModalBottomSheet(
        context: context,
        builder: (BuildContext context){
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              createData(context, "Apple", Icons.add, _fun_one()),
              createData(context, "Product", Icons.search, _fun_two()),
              createData(context, "Food", Icons.message, _fun_three())
            ],
          );
        }
    );

  }

  ListTile createData(BuildContext context,String name,IconData icon,Function fun){

    return ListTile(
      leading: Icon(icon),
      title: Text(name),
      onTap: (){
        Navigator.pop(context);
        fun();
      },
    );

  }

  _fun_one(){
    print("Fun one here click..");
  }
  _fun_two(){
    print("Fun two here click..");
  }

  _fun_three(){
    print("Fun three here click..");
  }

}
