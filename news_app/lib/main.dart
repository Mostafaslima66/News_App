import 'package:flutter/material.dart';
import 'package:news_app/Pages/Home_Page.dart';

void main() {
  runApp(const NewsApp());
  // NewsService().getNews();
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
