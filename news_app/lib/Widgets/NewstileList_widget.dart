import 'package:flutter/material.dart';
import 'package:news_app/Models/NewtileModel.dart';
import 'package:news_app/Widgets/NewsTile.dart';

class NewsList extends StatelessWidget {
  const NewsList({super.key, required this.tileModel});
  final List<NewstileModel> tileModel;

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(childCount: tileModel.length,
            (context, index) {
      return NewsTile(
        newstileModel: tileModel[index],
      );
    }));
  }
}

        