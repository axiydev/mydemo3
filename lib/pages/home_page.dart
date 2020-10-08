import 'package:flutter/material.dart';
import 'package:mydemo3/pages/detail_page.dart';
class HomePage extends StatefulWidget{
  static final String id="home_page";
  @override
  _HomePageState createState()=>_HomePageState();
}
class _HomePageState extends State<HomePage>{
  Future _openDetail() async{
   Map result=await Navigator.of(context).push(new MaterialPageRoute(
      builder:(BuildContext){
     return new DetailPage(input:'Welcome to detail page');
      },
    ));
   if(result!=null && result.containsKey('data')){
     print(result['data']);
   }else{
     print("Nothing");
   }
  }
  @override
  Widget build(BuildContext context)=>Scaffold(
    body:Center(
      child:FlatButton(
        onPressed:(){
          _openDetail();
        },
        color:Colors.green,
        child:Text('Detail Page'),
      ),
    ),
  );
}