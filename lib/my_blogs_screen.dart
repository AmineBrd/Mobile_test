import "package:flutter/material.dart";
class MyBlogScreen extends StatefulWidget {
  const MyBlogScreen({super.key});

  @override
  State<MyBlogScreen> createState() => _MyBlogScreenState();
}

class _MyBlogScreenState extends State<MyBlogScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Blog Page"));
  }
}