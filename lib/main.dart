import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

// 앱바
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.red),   // 기본 테마 설정
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('FunCoding'),
        ),
        body: Center(   // 가운데 정렬
          child: TextField(   // 입력창
            decoration: InputDecoration(labelText: "입력해보세요"),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          elevation: 10.0,
          child: Icon(Icons.add),
          onPressed: (){},
        ),
        // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,  // 버튼 위치 지정
        drawer: Drawer(   // 햄버거 메뉴
          child: ListView(
            children: [
              ListTile(title: Text('Item1'),),
              ListTile(title: Text('Item2'),)
            ],
          ),
        ),
        persistentFooterButtons: [   // 제일 밑 footer에 버튼 두개
          Icon(Icons.settings),
          SizedBox(width: 5,),   // 버튼 위젯 사이 공간 띄우기용
          Icon(Icons.exit_to_app),
          SizedBox(width: 10,)
        ],
        bottomNavigationBar: BottomNavigationBar(  // 밑에 메뉴 아이콘(버튼들)
          currentIndex: 0,
          fixedColor: Colors.green,
          items: [
            BottomNavigationBarItem(
              label: "Home",
              icon:Icon(Icons.home)
            ),
            BottomNavigationBarItem(
              label: "Search",
              icon:Icon(Icons.search)
            ),
            BottomNavigationBarItem(
              label: "Profile",
              icon:Icon(Icons.account_circle)
            )
          ],
          onTap: (int indexOfItem) {},
        ),
        backgroundColor: Colors.amberAccent,
        resizeToAvoidBottomInset: false,
      ),
    );
  }

  // container
  // @override
  // Widget build(BuildContext context) {
  //   return Container(   // div 태그 같은 container
  //     // color: Colors.amber,   // backgroundcolor
  //     margin: EdgeInsets.all(10),   // 상하좌우 margin 10씩
  //     decoration: BoxDecoration(   // container 안에 box
  //       color: Colors.blue,
  //       borderRadius: BorderRadius.all(Radius.circular(10)),   // boder radius
  //       border: Border.all(   // box boder
  //         color: Colors.amber,
  //         width: 5
  //       )
  //     ),
  //     child: Center(
  //       child: Text('Hello World', textDirection: TextDirection.ltr   // 문자 왼쪽 정렬
  //       ),
  //     ),
  //   );
  // }

// row & column
//   @override
//   Widget build(BuildContext context) {
//     return Column( // 여러 자식을 가지므로 []로 위젯 표시
//       children: [
//        Row(
//          textDirection: TextDirection.ltr,
//          mainAxisAlignment: MainAxisAlignment.start,   // Row위젯에서는 수평 정렬, Column정렬에서는 수직 정렬
//          children: [
//            Container(color: Colors.red, width: 50, height: 50,),
//            Container(color: Colors.blue, width: 50, height: 50,),
//            Container(color: Colors.yellow, width: 50, height: 50,),
//          ],
//        ),Row(
//          textDirection: TextDirection.ltr,
//          mainAxisAlignment: MainAxisAlignment.end,   // Row위젯에서는 수평 정렬, Column정렬에서는 수직 정렬
//          children: [
//            Container(color: Colors.red, width: 50, height: 50,),
//            Container(color: Colors.blue, width: 50, height: 50,),
//            Container(color: Colors.yellow, width: 50, height: 50,),
//          ],
//        ),Row(
//          textDirection: TextDirection.ltr,
//          mainAxisAlignment: MainAxisAlignment.center,   // Row위젯에서는 수평 정렬, Column정렬에서는 수직 정렬
//          children: [
//            Container(color: Colors.red, width: 50, height: 50,),
//            Container(color: Colors.blue, width: 50, height: 50,),
//            Container(color: Colors.yellow, width: 50, height: 50,),
//          ],
//        ),Row(
//          textDirection: TextDirection.ltr,
//          mainAxisAlignment: MainAxisAlignment.spaceEvenly,   // Row위젯에서는 수평 정렬, Column정렬에서는 수직 정렬
//          children: [
//            Container(color: Colors.red, width: 50, height: 50,),
//            Container(color: Colors.blue, width: 50, height: 50,),
//            Container(color: Colors.yellow, width: 50, height: 50,),
//          ],
//        ),Row(
//          textDirection: TextDirection.ltr,
//          mainAxisAlignment: MainAxisAlignment.spaceAround,   // Row위젯에서는 수평 정렬, Column정렬에서는 수직 정렬
//          children: [
//            Container(color: Colors.red, width: 50, height: 50,),
//            Container(color: Colors.blue, width: 50, height: 50,),
//            Container(color: Colors.yellow, width: 50, height: 50,),
//          ],
//        ),Row(
//          textDirection: TextDirection.ltr,
//          mainAxisAlignment: MainAxisAlignment.spaceBetween,   // Row위젯에서는 수평 정렬, Column정렬에서는 수직 정렬
//          children: [
//            Container(color: Colors.red, width: 50, height: 50,),
//            Container(color: Colors.blue, width: 50, height: 50,),
//            Container(color: Colors.yellow, width: 50, height: 50,),
//          ],
//        ),
//
//       ],
//     );
//   }


}

