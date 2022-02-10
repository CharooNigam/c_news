import 'package:c_news/model/news_model.dart';
import 'package:flutter/material.dart';

class FavTile extends StatelessWidget {
  FavTile({Key? key, required this.info}) : super(key: key);

  final NewsModel info;

  @override
  Widget build(BuildContext context) {

    print(info.toString());

    return Container(
      padding: EdgeInsets.only(top: 8, bottom: 8, right: 3),
      margin: EdgeInsets.only(bottom: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            offset: Offset(5,5),
          ),

        ],
      ),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Icon(Icons.favorite,
              size: 36,
              color: Colors.red,
            ),
          ),
          Expanded(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  info.news_heading,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 16,

                  ),
                ),
                SizedBox(height: 10,),
                Text(
                  info.news_body ?? '',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,

                  ),
                ),
                SizedBox(height: 10,),

                Text(
                  info.time_stamp,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                  ),
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
