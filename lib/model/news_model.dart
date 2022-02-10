class NewsModel{

  NewsModel({required this.news_heading, this.news_body = '', required this.time_stamp});

  final String news_heading;
  final String? news_body;
  final String time_stamp;

}