import 'package:blog/home.dart';
import 'package:blog/my_blogs_screen.dart';
import 'package:flutter/material.dart';

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  late int pageIndex;
  @override
  void initState() {
    pageIndex = 0;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar:AppBar(
          title: const Text("Home"),
        ),
        body: pageIndex == 0?const Home():MyBlogScreen(),
        floatingActionButton: FloatingActionButton(onPressed: (){},child:const Icon(Icons.add)),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: pageIndex,
          onTap: (int index){
            setState(() {
              pageIndex = index;
            }); 
          },
          items: const [
            BottomNavigationBarItem(
              icon:Icon(Icons.home),
              label: "Home"
             ),
             BottomNavigationBarItem(
              icon:Icon(Icons.account_circle_rounded),
              label: "myBlogs"
             )
        ]),
      ),
    );
  }
}
