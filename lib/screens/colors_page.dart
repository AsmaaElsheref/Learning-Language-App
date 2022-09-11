import 'package:flutter/material.dart';
import 'package:learning_language_app/component/list_items.dart';
import 'package:learning_language_app/models/Items.dart';

class Colors_Page extends StatelessWidget {
  const Colors_Page ({Key? key}) : super(key: key);

  final List<Items> colors=const [
    Items(
        image:'assets/images/Colors/color_black.png',
        itName:'Nero',
        enName:'Black',
        sound:'sounds/Colors/nero-black.mp3') ,
    Items(
        image:'assets/images/Colors/color_white.png',
        itName:'Bianco',
        enName:'White',
        sound:'sounds/Colors/white.mp3') ,
    Items(
        image:'assets/images/Colors/color_brown.png',
        itName:'Marrone',
        enName:'Brown',
        sound:'sounds/Colors/marrone-brown.mp3') ,
    Items(
        image:'assets/images/Colors/color_grey.png',
        itName:'Grigio',
        enName:'Grey',
        sound:'sounds/Colors/grigio-grey.mp3') ,
    Items(
        image:'assets/images/Colors/color_red.png',
        itName:'Rosso',
        enName:'Red',
        sound:'sounds/Colors/rosso-red.mp3') ,
    Items(
        image:'assets/images/Colors/yellow.png',
        itName:'Giallo',
        enName:'Yellow',
        sound:'sounds/Colors/giallo-yellow.mp3') ,
    Items(
        image:'assets/images/Colors/color_green.png',
        itName:'Verde',
        enName:'Green',
        sound:'sounds/Colors/verde-green.mp3') ,
    Items(
        image:'assets/images/Colors/purple.png',
        itName:'Viola',
        enName:'Purple',
        sound:'sounds/Colors/viola-purple.mp3') ,

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Colors'),
        backgroundColor: Colors.amberAccent,
      ),

      body: ListView.builder(
          itemCount: colors.length,
          itemBuilder: (Context , num){
            return ListItems(item:colors[num] ,
              color: Colors.amberAccent,);
          }
      ),

    );
  }
}