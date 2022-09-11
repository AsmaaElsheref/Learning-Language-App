import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:learning_language_app/models/Items.dart';

class ListItems extends StatelessWidget {
  const ListItems({Key? key, required this.item, required this.color}) : super(key: key);
  final Items item ;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return item.image==null? Container(
        color: color,
        height: 100,
        width: double.infinity,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(item.itName ,
                    style: TextStyle(fontSize: 12.5 , color: Colors.white),),
                  Text(item.enName,
                    style: TextStyle(fontSize: 12.5 , color: Colors.white),)
                ],
              ),
            ),
            Spacer(flex: 1,),

            IconButton(
                onPressed: (){
                  final player = AudioPlayer ();
                  player.play(AssetSource(item.sound));

                },
                icon:Icon((Icons.play_arrow_rounded)) ),


          ],
        )
    ) : Container(
            color: color,
            height: 100,
            width: double.infinity,
            child: Row(
              children: [
                Container(
                  color: Colors.white70 ,
                    child: Image.asset(item.image!)),
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(item.itName ,
                        style: TextStyle(fontSize: 18 , color: Colors.white),),
                      Text(item.enName,
                        style: TextStyle(fontSize: 18 , color: Colors.white),)
                    ],
                  ),
                ),
                Spacer(flex: 1,),

                 IconButton(
                       onPressed: (){
                         final player = AudioPlayer ();
                          player.play(AssetSource(item.sound));

                       },
                       icon:Icon((Icons.play_arrow_rounded)) ),


              ],
            )
        );
  }
}
