import "package:blog/Blog.dart";
import "package:blog/blog_widget.dart";
import "package:flutter/material.dart";
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late List<Blog> blogs;
  @override
  void initState() {
    blogs = [
      Blog(title: "Blog 1",description: "description 1",content: "Content 1"),
      Blog(title: "Blog 2",description: "description 2",content: "Content 2"),
      Blog(title: "Blog 3",description: "description 3",content: "Content 3"),
    ];
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return ListView.separated(itemBuilder: (context,index){
      return BlogTile(
        blog:blogs[index]
      );
    }, separatorBuilder: (context,index) => Divider(), itemCount: blogs.length);
  }
}