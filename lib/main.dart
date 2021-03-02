import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner:false,
  home: MyApp(),
  ),
);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // debugShowCheckedModeBanner:false,
      appBar: AppBar(
        title: Text('DaniDev'),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              MyCard(
                title: Text(
                  'Personitas',
                  style: TextStyle(color: Colors.grey, fontSize: 30.0, ),
                ), 
                icon: Icon(
                  Icons.supervisor_account,
                  size: 40.0,
                  color: Colors.blue,
                ),
              ),
              MyCard(
                title: Text(
                  'Configuraciones',
                  style: TextStyle(color: Colors.grey, fontSize: 30.0, ),
                ), 
                icon: Icon(
                  Icons.settings,
                  size: 40.0,
                  color: Colors.red,
                ),
              ),
              MyCard(
                title: Text(
                  'Plantitas',
                  style: TextStyle(color: Colors.grey, fontSize: 30.0, ),
                ), 
                icon: Icon(
                  Icons.eco,
                  size: 40.0,
                  color: Colors.green,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  final Widget title;
  final Widget icon;

  MyCard({this.title, this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 3.0),
      child:Card(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child:Column(
            children: <Widget>[this.title, this.icon],
          ),
        ),
      ),
    );
  }
}