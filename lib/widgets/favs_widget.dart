import 'package:c_news/model/news_data.dart';
import 'package:c_news/model/news_model.dart';
import 'package:flutter/material.dart';

import 'news_tile.dart';

class FavsWidget extends StatefulWidget {
  const FavsWidget({Key? key}) : super(key: key);

  @override
  State<FavsWidget> createState() => _FavsWidgetState();
}



class _FavsWidgetState extends State<FavsWidget> {

  final newsData = NewsData();

  late List<NewsModel> favsCollec;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    favsCollec = newsData.favCollection;

  }

  @override
  Widget build(BuildContext context) {
    return ListView(

      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      children: List.generate(
        favsCollec.length,
            (index) {
          return NewsTile(
            info: favsCollec[index],
          );
        },
      ),
    );
  }
}
