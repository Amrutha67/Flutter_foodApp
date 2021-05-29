import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_tabfoodapp/screens/items.dart';
import 'package:flutter_tabfoodapp/screens/price.dart';
import 'package:flutter_tabfoodapp/screens/reg.dart';
import 'package:flutter_tabfoodapp/screens/search.dart';

void main()
{
  runApp(Myapplication());
}
class Myapplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(length: 4,
          child: Scaffold(
            appBar: AppBar(
              title:Text("Food4U",style: TextStyle(backgroundColor: Colors.red),),
              backgroundColor: Colors.amber,
              bottom: TabBar(
                  tabs: [
                    Tab(text: "Sign Up",icon: Icon(Icons.login,color: Colors.deepOrange,),),
                    Tab(text: "FoodDetails",icon: Icon(Icons.food_bank_outlined,color: Colors.deepOrange,)),
                    Tab(text: "FoodList",icon: Icon(Icons.emoji_food_beverage_outlined,color: Colors.deepOrange,)),
                    Tab(text: "Search",icon: Icon(Icons.search_outlined,color: Colors.deepOrange,))
                  ]),
            ),
            body: TabBarView(children: [
              Reg(),
              Foodf(),
              Foodinfo(),
              Price(),
            ]),
          )),
    );

  }
}