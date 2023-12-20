import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:news_app/Models/NewtileModel.dart';

class NewsService {
  //final Dio dio;
  //NewsService(this.dio);
  final Dio dio = Dio();
  Future<List<NewstileModel>> getNews({required category}) async {
    try {
      var response = await dio.get(
          'https://newsapi.org/v2/everything?apiKey=9e34aa70140b49cd9df531ffdc652652&q=$category');
      Map<String, dynamic> jsondata = response.data;
      List<dynamic> articls = jsondata['articles'];
      List<NewstileModel> News = [];

      for (var articl in articls) {
        NewstileModel newstileModel = NewstileModel.fromjson(articl);
        News.add(newstileModel);
      }
      return (News);
    }on DioException catch (e) {
      final String errormesage=e.response?.data['error']['message'] ??
          'oops there was an error try again later';
      throw Exception(errormesage);
    }catch(e){
       log(e.toString());
      throw Exception('oops there was an error try again later');
    }
  }
}
