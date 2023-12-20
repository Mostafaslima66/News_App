/* import 'package:flutter/material.dart';
import 'package:news_app/Models/NewtileModel.dart';
import 'package:news_app/Widgets/NewsTile.dart';
import 'package:news_app/services/News_service.dart';

class NewsList extends StatefulWidget {
  const NewsList({super.key});

  @override
  State<NewsList> createState() => _NewsListState();
}

class _NewsListState extends State<NewsList> {
  List<NewstileModel> tileModel = [];
  bool isloading = true;

  @override
  void initState() {
    super.initState();
    getallNews();
  }

  Future<void> getallNews() async {
    tileModel = await NewsService().getNews();
    isloading = false;
    setState(() {});
  }

  Widget build(BuildContext context) {
    if (isloading) {
      return const SliverToBoxAdapter(
          child: Center(child: CircularProgressIndicator()));
    } else {
      return SliverList(
          delegate: SliverChildBuilderDelegate(childCount: tileModel.length,
              (context, index) {
        return NewsTile(
          newstileModel: tileModel[index],
        );
      }));
    }
  }
} */

 /*** 
    ListView.builder(
      shrinkWrap: true,
      physics:const NeverScrollableScrollPhysics(),
      // دى مينفعش تسكرول  widgetهنا احنا قولنالو خلى ال 
      //  sliverوقف السكرول بتاعها علشان احنا خلناها تسكرول هناك فى ال 
      // trueبى  shrinkwrapوبعدين خلينا ال 
        itemCount: 10,
        itemBuilder: (context, index) {
          return const NewsTile();
        });***/