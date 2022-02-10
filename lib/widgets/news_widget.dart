import 'package:c_news/model/news_data.dart';
import 'package:c_news/model/news_model.dart';
import 'package:c_news/widgets/news_tile.dart';
import 'package:flutter/material.dart';

class NewsWidget extends StatefulWidget {
  NewsWidget({Key? key}) : super(key: key);

  @override
  State<NewsWidget> createState() => _NewsWidgetState();
}

class _NewsWidgetState extends State<NewsWidget> {

  late List<NewsModel> collectionNews;

  NewsData obj = NewsData();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    obj.fetchData();
    collectionNews = obj.newsCollection;

  }

  @override
  Widget build(BuildContext context) {
    return ListView(

        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        children: List.generate(
          collectionNews.length,
          (index) {
            return NewsTile(
              info: collectionNews[index],
            );
          },
        ),
    );
  }
}
