import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class screen1 extends StatelessWidget {

  final String s1='早上好中国'
      '现在我有冰淇淋'
      '我很喜欢冰淇淋'
      '但是'
      '速度与激情9'
      '比冰淇淋'
      '速度与激情'
      '速度与激情9'
      '我最喜欢'
      '所以…现在是音乐时间'
      '准备 1 2 3'
      '两个礼拜以后'
      '速度与激情9 ×3'
      '不要忘记'
      '不要错过'
      '记得去电影院看速度与激情9'
      '因为非常好电影'
      '动作非常好'
      '差不多一样冰淇淋'
      '再见';

  @override
  Widget build(BuildContext context) {

    final player=AudioPlayer();
    player.play(AssetSource("assets/Free_Test_Data_1MB_MP3.mp3"));

    return SingleChildScrollView(
      child: Column(
        children:<Widget>[
          Padding(padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
                  child: Text("Who am I",
                              style: TextStyle(fontSize:24,
                                               fontWeight:FontWeight.bold,)),
          ),
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.fromLTRB(30, 0, 30, 50),
            decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 3),
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [ BoxShadow(color: Colors.amberAccent,
                                               offset: Offset(6, 6)),
                        ],),
            child:Text(s1,
                       style: TextStyle(fontSize: 20),),
            ),

           Container(
             color: Colors.redAccent,
             child: Image.asset('images/f1.jpg'),
             height: 200,
             width: 200,
           ),
          SizedBox(height: 30,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: Colors.purple,
                    style: BorderStyle.solid,
                  ),
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                            image: AssetImage('images/f2.jpg'),
                            fit: BoxFit.cover ,
                  ),
                  color: Colors.white,
                ),
              ),
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: Colors.purple,
                    style: BorderStyle.solid,
                  ),
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                    image: AssetImage('images/f3.jpg'),
                    fit: BoxFit.cover ,
                  ),
                  color: Colors.white,
                ),
              ),

            ],
          ),
        ],
      ),
    );
  }
}
