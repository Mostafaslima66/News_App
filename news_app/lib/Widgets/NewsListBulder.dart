import 'package:flutter/material.dart';
import 'package:news_app/Models/NewtileModel.dart';
import 'package:news_app/Widgets/NewstileList_widget.dart';
import 'package:news_app/services/News_service.dart';

class NewsListBulder extends StatefulWidget {
  const NewsListBulder({
    super.key,
    required this.category,
  });

  final String category;
  @override
  State<NewsListBulder> createState() => _NewsListBulderState();
}

class _NewsListBulderState extends State<NewsListBulder> {
  // List<NewstileModel> tileModel = [];
  var future;
  @override
  void initState() {
    super.initState();
    future = NewsService().getNews(category: widget.category);

    // getallNews();
  }

  

  Widget build(BuildContext context) {
    return FutureBuilder<List<NewstileModel>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return NewsList(tileModel: snapshot.data!);
          } else if (snapshot.hasError) {
            return SliverFillRemaining(
              child: Container(
                child: Text(
                  'OOPS there was an error',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.red),
                ),
                alignment: Alignment.center,
              ),
            );
          } else {
            return SliverFillRemaining(
                hasScrollBody: false,
                child: Container(
                  child: CircularProgressIndicator(),
                  alignment: Alignment.center,
                ));
          }
        });
  }
}


