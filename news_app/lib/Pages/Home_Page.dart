import 'package:flutter/material.dart';
import 'package:news_app/Widgets/CategoryListView_widget.dart';
import 'package:news_app/Widgets/NewsListBulder.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'News',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              Text(
                'Cloud',
                style: TextStyle(
                  color: Colors.yellow,
                ),
              ),
            ],
          )),
      body: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: CustomScrollView(
            physics: BouncingScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(
                child: CategoryListViewWidget(),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 22,
                ),
              ),
              NewsListBulder(category: 'general',)
            ],
          )),
    );
  }
}
/***
   Column(
          children: [
            CategoryListViewWidget(),
            SizedBox(
              height: 22,
            ),
            Expanded(child: NewsList())
          ],
        ),
 ***/
//error هيضرب  sliverمينفعش نحطها جوا ال  expanded علشان ال