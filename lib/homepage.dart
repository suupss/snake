import 'dart:async';
import 'package:flutter/material.dart';
import 'package:snake_game/blankpixel.dart';
import 'package:snake_game/foodpixel.dart';
import 'package:snake_game/snakepixel.dart';
enum dragDirection {UP,DOWN,RIGHT,LEFT}
class Homepage extends StatefulWidget {
  
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  
  int rowSize = 10;
int totalNumberOfSquares = 100;
//snake location
List<int> snakePosition = [0,1,2];
//food location
int foodPosition = 55;
//start game

void startGame()
{
  
  Timer.periodic(const Duration(milliseconds: 500), (timer){

    setState(() {
snakeDirection();
    });

  });

}
void snakeDirection()
{
      snakePosition.add(snakePosition.last+1);
      snakePosition.remove(snakePosition[0]);
}
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
    backgroundColor: Colors.black,
      body: Column(
        children: [Expanded(child: Container()),
        Expanded(
          flex: 3,
          child: GestureDetector(
            onVerticalDragUpdate: (details) {
              if(details.delta.dy > 0 ){
                dragDirection.DOWN;
              }
              if(details.delta.dy<0)
              {
                dragDirection.UP;
              }
              
            },
            onHorizontalDragUpdate: (details) {
              if(details.delta.dx > 0)
              {
                dragDirection.RIGHT;
              }
                if(details.delta.dx < 0)
              {
                dragDirection.LEFT;
              }
            },
            child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: totalNumberOfSquares,
              gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: rowSize), itemBuilder: (context,index){
                if(snakePosition.contains(index))
                {
                  return  Snakepixel();
                }
                if(foodPosition==index){
                  return Foodpixel();
                }
                else{
              return Blankpixel();
                }
            }),
          )),
        Expanded(
          child: Center(
          child: SizedBox(
            height: 50,
            width: 100,
            child: TextButton(onPressed: startGame,
            style: TextButton.styleFrom(backgroundColor: Colors.pink), child: const Icon(Icons.play_arrow,size: 35,),),
            
                    ),
          ),
        ),
    
        
        ],
      ),
    );
  }
}
//grid size

