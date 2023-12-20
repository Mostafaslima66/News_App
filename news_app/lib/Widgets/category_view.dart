import 'package:flutter/material.dart';
import 'package:news_app/Widgets/NewsListBulder.dart';

class categoryview extends StatelessWidget {
  const categoryview({super.key, required this.category});
  final String category;
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          
          backgroundColor: Colors.black,
          title: Text(category,
          style: TextStyle(
            color: Colors.white
          ),),
        ),
        
        body: Padding(
          padding: const EdgeInsets.only(top: 16),
          child: CustomScrollView(
            slivers: [NewsListBulder(category: category)],
          ),
        ),
      ),
    );
  }
}
