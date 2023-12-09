import "package:blog/Blog.dart";
import "package:flutter/material.dart";

class BlogTile extends StatelessWidget {
  Blog blog;
  BlogTile({super.key, required this.blog});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      child: ListTile(
        title: Text(blog.title),
        subtitle:Text(blog.description),
        trailing: const Icon(Icons.arrow_forward_ios_rounded), 
        ),
    );
  }
}