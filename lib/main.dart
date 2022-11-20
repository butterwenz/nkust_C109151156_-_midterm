import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

final player=AudioPlayer();

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  final tabs=[
    Center(child: screen1()),
    Center(child: screen2()),
    Center(child: screen3()),
    Center(child: screen4()),
  ];

  int _currentindex=0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Midterm'),),
        body: tabs[_currentindex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.blue,
          selectedItemColor: Colors.white,
          selectedFontSize: 18.0,
          unselectedFontSize: 14.0,
          iconSize: 30.0,
          currentIndex: _currentindex,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),
                                    label: 'Home',
                                    ),
            BottomNavigationBarItem(icon: Icon(Icons.access_alarm),
                                    label: 'Alarm',
                                    ),
            BottomNavigationBarItem(icon: Icon(Icons.business),
                                    label: 'Business',
                                    ),
            BottomNavigationBarItem(icon: Icon(Icons.school),
                                    label: 'School',
                                    ),
          ],
          onTap: (index) { setState(() {
                                       _currentindex=index;
                                       if (index!=0) {
                                         player.stop();
                                       }
                         });
        },
      ),
      ),
    );
  }
}

class screen1 extends StatelessWidget {

  final String s1='C109151156蔡嘉文'
 "\n家庭背景\n我在一個小家庭中成長，有一個姊姊，爸媽皆從事著辛苦的服務業。從小父母對我跟姊姊的的期許，是希望我們能按照自己的興趣發展，但要有耐心去堅持，並且為自己的選擇負責。很幸運地，家人不僅關心我，也肯定我、鼓勵我。目前姊姊正在大學鑽研她喜愛的物理，而我也將步入大學，去追求我心中的理想。國小\n　國小時在自然課做了第一個實驗—水火箭，當時雖然不明白其原理，卻能靠著簡單的裝置和步驟，製造出動力裝置，便讓我產生對科學的憧憬。國中\n國中在課餘和同學玩線上遊戲，因家裡套裝機效能跟不上而上網自學組裝電腦，將整台套裝機內部做了大更新，遇到最大的困難是將套裝機機殼的前面板訊號源退pin再重新按照針腳定義插上。另外，也學會了如何灌作業系統，最後成功在不改變機殼的前提下裝上新零件，讓效能提升。這次經驗不僅增加了我對各項零件的認識，也讓我產生對零件上的積體電路和半導體應用的興趣。高二\n高二在生活科技課時，有一次上台報告的機會，主題可以由自己發揮，我便選了從國中就有興趣的電晶體作為我們這組的報告，上台和同學介紹電晶體，也在找資料過程中發現新的領域—積體光路。另外，分享了自己組裝電腦的經驗給高中好友，幫助他們家組了一台繪圖工作機，收穫甚多。''也嘗試自己DIY維修手把，綜合這些經驗，確立了我往電機、光電、材料領域學習的志向。";

  @override
  Widget build(BuildContext context) {

    player.play(AssetSource("Free_Test_Data_1MB_MP3.mp3"));

    return SingleChildScrollView(
      child: Column(
        children:<Widget>[
          //先放個標題
          Padding(padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
            child: Text("Who am I?",
                style: TextStyle(fontSize:24,
                  fontWeight:FontWeight.bold,)),
          ),
          //文字自傳部份
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

          //放一張照片
          Container(
            color: Colors.redAccent,
            child: Image.asset('images/f1.jpg'),
            height: 200,
            width: 200,
          ),
          SizedBox(height: 30,),

          //一列放兩個圖
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

class screen2 extends StatelessWidget {
  @override
  final String s2='衝突自責 – 所愛的父母因我衝突，感到自責沮喪'
      '​ ​ ​ 看到父母在教育理念上的衝突，我十分自責與沮喪。但我感謝父母'
      '，因為這樣的經驗，讓我有機會去了解自己與探索自己的興趣所在。轉念思考 – '
      '正向積極面對問題找出關鍵，可以平順地解決問題​ ​ ​ 面對情緒的問'
      '題，我開始積極正向思考尋求解決。我認為當面對類似父母教育理念這種爭吵時，首先'
      '應該先把自己目前的立場、情緒看清楚，不是以第一人稱而是以第三者的角度，看清楚'
      '自己，並詢問自己，如此悲傷、憤怒真的有用且必要嗎？然後慢慢的讓自己冷靜下來，'
      '之後再以穩定且冷靜的情緒，慢慢的讓爭吵的對象也冷靜下來，之後再與爭吵對象好好'
      '溝通，我想如此以來就能將雙方的傷害降到最低，也大大增加和解的機率。我認為一個人'
      '情緒的氣場，是能夠帶給他人影響的，所以我想在學習助人的過程中，不管遇到任何問題，'
      '先讓自己冷靜並將穩定的氣場帶給他人是十分重要的一個關鍵。輔導股長 – 了解性向，'
      '服務同學，做好老師與同學的橋梁​ ​ ​ 自從我瞭解我的興向，確立未來想走'
      '的路後，高中二年級下學期開始，我就自願擔任輔導股長，服務師長與同學們，雖然高中輔'
      '導股長的工作和社會工作的實務有一段距離，反而是做一些升學相關的服務與工作，但透由'
      '觀察與傾聽同學的想法，協助同學接受老師輔導，這過程我學到了不少正向的工作態度與待'
      '人處事的道理，在這其中感觸特別深的是成為同學與師長之間的橋樑，令我有如信使鳥的特別'
      '成就感，同時也可以幫助他人，我覺得很快樂。助人助己 – 拓展社會福利工作的視野​'
      ' ​ ​ 任何事情都是要去做了之後，才會有所體會，不然只是空想。幫助與關懷他人是'
      '我興趣所在，但真正重要的是要實際去溝通與執行，然後從中去體會去轉化成自己的心得，然後持續'
      '改善再應用。經由擔任三個學期的輔導股長，我了解助人其實就是助己，唯有服務利人，自己內心'
      '才會有所真正的喜悅，這樣的體會，我想應該可以繼續往外拓展，藉由政府或民間的力量，讓我們的'
      '社會福利可以落實，尤其是對需要被幫助的弱勢族群。';
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
          children:<Widget>[
      //先放個標題
      Padding(padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
      child: Text("學習歷程",
          style: TextStyle(fontSize:24,
            fontWeight:FontWeight.bold,)),
    ),
    //
    Container(
    padding: EdgeInsets.all(20),
    margin: EdgeInsets.fromLTRB(30, 0, 30, 50),
    decoration: BoxDecoration(
    border: Border.all(color: Colors.black, width: 3),
    borderRadius: BorderRadius.circular(8),
    boxShadow: [ BoxShadow(color: Colors.white,
    offset: Offset(6, 6)),
    ],),
    child:Text(s2,
    style: TextStyle(fontSize: 20),),
    ),
    ]
    ),

    );
  }
}

class screen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:Column(
        children: [
          //有多種排版方式, 此處以最直覺的方式將每一列放文字內容
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [Text("大一時期"),],
          ),
          SizedBox(height: 10,),
          Row(mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                    height: 100,
                    width: 200,
                  child: ListView(
                    children: [
                      //條列式參考
                      Text('1. 學好英文'),
                      Text('2. 組合語言'),
                      Text('3. 考取證照'),
                      Text('4. 人際關係'),
                    ],
                  ),
                ),
              ],),
          SizedBox(height: 10,),
          Row( mainAxisAlignment: MainAxisAlignment.start,
            children: [Text("大二時期"),],),
          SizedBox(height: 10,),
          Row(mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 100,
                width: 200,
                child: ListView(
                  children: [
                    //條列式參考
                    Text('1. 專研資訊安全與工作專業技能與知識'),
                    Text('2. 提升問題解決與助人助己能力'),
                    Text('3. 增強強化與程式溝通能力'),
                    Text('4. 學習演算法,資料結構'),
                  ],
                ),
              ),
            ],),
          SizedBox(height: 10,),
          Row( mainAxisAlignment: MainAxisAlignment.start,
            children: [Text("大三時期"),],),
          SizedBox(height: 10,),
          Row(mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 100,
                width: 200,
                child: ListView(
                  children: [
                    //條列式參考
                    Text('1. 強化研發能力'),
                    Text('2. 善用科技學習提升專業能力'),
                    Text('3. 學習組織團隊合作與領導力'),
                    Text('4. 準備專題'),
                  ],
                ),
              ),
            ],),
          SizedBox(height: 10,),
          Row(mainAxisAlignment: MainAxisAlignment.start,
            children: [Text("大四時期"),],),
          SizedBox(height: 10,),
          Row(mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 100,
                width: 200,
                child: ListView(
                  children: [
                    //條列式參考
                    Text('1. 深入理論與實務應用能力'),
                    Text('2. 準備考取研究所'),
                  ],
                ),
              ),
            ],),
        ],
      ),);
  }
}

class screen4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(child:Text('一、摘要\n近年來由於全球網路頻寬的提升，大家開始可以互相分享較大的影音檔案，加上雲端運算與儲存的普及，影音網站變得相當熱門。本專題將雲端運算中的Nutch 搜尋引擎(其內包含 Hadoop)結合影音串流之應用，利用雲端運算的特性，將檔案分散儲存在多台電腦內，並連結多台電腦做平行叢集運算(雲端運算)，來有效縮短搜尋索引庫建置所需花費的時間，讓使用者在影音網站上可以更加快速而精確地搜尋到所要找的影片。\n\n二、研究動機與目標\n為何要做此一專題研究與實驗？\n最近幾年來雲端運算被視作是最熱門的技術之一，對於雲端運算運作的方式\n與理論基礎我們深感興趣，有鑑於此，我們希望能透過專題研究與實驗的機會\n對雲端運算基本概念有所認識，並學習如何使用有關雲端運算的軟體套件，進而\n把雲端架構運用在影音網站上面，增加其搜尋的效能，達成雲端運算的實體應用。\n'),);
  }
}
