import 'package:flutter/material.dart';
import 'package:mydemo3/pages/detail_page.dart';
class HomePage extends StatefulWidget{
  static final String id="home_page";
  @override
  _HomePageState createState()=>_HomePageState();
}
class _HomePageState extends State<HomePage>{

  Future _openDetails() async{
    Navigator.of(context).push(new MaterialPageRoute(
      builder:(BuildContext context){
      return new DetailPage(input:"Hello Qalb Team Soft");
      }
    ));
  }
  @override
  Widget build(BuildContext context)=>Scaffold(
    body:Center(
      child:FlatButton(
        onPressed:(){
          _openDetails();
          //Navigator.pushReplacementNamed(context,DetailPage.id);
        },
        color: Colors.blue,
        child:Text('Detail Page'),
      ),
    ),
  );
}