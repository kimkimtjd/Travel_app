import 'package:fluter_practice/find.dart';
import 'package:fluter_practice/home.dart';
import 'package:fluter_practice/map.dart';
import 'package:fluter_practice/mypage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/find_data.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => Counter(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '제목',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: '대한민국 방방곳곳'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int current_index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      /********* 상단바 제목 *********/
      appBar: AppBar(
        title: Text('이번주는 어디?' , textAlign: TextAlign.left, ),
        leading: Icon(Icons.menu),
        actions: <Widget>[
          new IconButton(
            icon: new Icon(Icons.bookmark),
            tooltip: 'Boookmark',
            onPressed: () => {},
          ),
          new IconButton(
            icon: new Icon(Icons.search),
            tooltip: 'Search',
            onPressed: () => {},
          )
        ],
      ),

        /********* BottomNavigation Bar *********/
      bottomNavigationBar: BottomNavigationBar(
        //현재 index 변수에 저장
        currentIndex: current_index,
        //tap -> index 변경
        onTap: (index) {
          print('index test : ${index}');
          setState(() {
            current_index = index;
          });
        },
        //BottomNavi item list
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '홈',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.find_in_page),
            label: '찾아보기',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: '전체지도',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '마이페이지',
          ),
        ],
        //selected된 item color
        selectedItemColor: Colors.red,
        //unselected된 item color
        unselectedItemColor: Colors.grey,
        //unselected된 label text
        showUnselectedLabels: true,
        //BottomNavigationBar Type -> fixed = bottom item size고정
        //BottomNavigationBar Type -> shifting = bottom item selected 된 item이 확대
        type: BottomNavigationBarType.shifting,
      ),

        /********* Body [Page , 및 기타정보 ] *********/
        body: Center(
          child: pages[current_index],
          //child: _pages[current_index], // 페이지와 연결
        ));
  }

  // 이동할 페이지를 배열로 생성
  //List _pages = [MyApp(), Text('page2'), Text('page3') ,Text('page4') ];
  static List<Widget> pages = <Widget> [
    Home(),
    Find(),
    Mapfind(),
    Mypage(),
  ];

}
