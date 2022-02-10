import 'dart:convert';
import 'dart:developer';

import 'package:c_news/model/news_model.dart';
import 'package:http/http.dart' as http;

class NewsData{

  NewsData._private();
  static final NewsData _instance = NewsData._private();
  factory NewsData(){
    return _instance;
  }

  List<NewsModel> favCollection = [];

  List<NewsModel> newsCollection = [

    // NewsModel(news_heading: '1_news', news_body: '1_body', time_stamp: '1'),
    // NewsModel(news_heading: '2_news', news_body: '2_body', time_stamp: '2'),
    // NewsModel(news_heading: '3_news', news_body: '3_body', time_stamp: '3'),
    // NewsModel(news_heading: '4_news', news_body: '4_body', time_stamp: '4'),
    // NewsModel(news_heading: '5_news', news_body: '5_body', time_stamp: '5'),
    // NewsModel(news_heading: '6_news', news_body: '6_body', time_stamp: '6'),
    // NewsModel(news_heading: '7_news', news_body: '7_body', time_stamp: '7'),

  ];

  void fetchData() async{

    var url = Uri.parse('https://api.first.org/data/v1/news');
    var response = await http.get(url);
    var decodedResponse = jsonDecode(utf8.decode(response.bodyBytes)) as Map;
    //log('[fetchData] ${decodedResponse['data']}');
    print(decodedResponse['data'].length);
    for(var news in decodedResponse['data']){
      newsCollection.add(
        NewsModel(
          news_heading: news['title'],
          news_body: news['summary'],
          time_stamp: news['published'],
        ),
      );
    }

  }

  void addToFav(NewsModel favNews){

    favCollection.add(favNews);

  }


}