import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  Category({this.color,this.text,this.onTap});
  Color? color;
  String? text;
  VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.only(left: 24),
        alignment: Alignment.centerLeft,
        color: color,
        height:150,
        width: double.infinity,
        child: Text(text! ,
          style: TextStyle(
              fontSize: 18,
              color: Colors.white
          ),),
      ),
    ) ;
  }
}