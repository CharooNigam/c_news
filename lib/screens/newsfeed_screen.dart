import 'package:c_news/rounded_button.dart';
import 'package:c_news/widgets/favs_widget.dart';
import 'package:c_news/widgets/news_widget.dart';
import 'package:flutter/material.dart';

class NewsFeedScreen extends StatefulWidget {
  const NewsFeedScreen({Key? key}) : super(key: key);

  @override
  State<NewsFeedScreen> createState() => _NewsFeedScreenState();
}

class _NewsFeedScreenState extends State<NewsFeedScreen> {

  int showTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.9),
      body: Column(
        children: [
          Expanded(
            child: showTab == 0? NewsWidget() : FavsWidget(),
          ),
          Container(
            height: 60,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      showTab = 0;
                      setState(() {

                      });
                    },
                    child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                        color: showTab == 0 ? Colors.blue : Colors.white,
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(12), topRight: Radius.circular(12)),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.list,
                            color: showTab == 0 ? Colors.white : Colors.black,
                            size: 32,
                          ),
                          SizedBox(width: 6,),
                          Text(
                            'News',
                            style: TextStyle(
                              color: showTab == 0 ? Colors.white : Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      showTab = 1;
                      setState(() {

                      });
                    },
                    child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                        color: showTab == 1 ? Colors.blue : Colors.white,
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(12), topRight: Radius.circular(12)),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.favorite,
                            color: showTab == 1 ? Colors.white : Colors.red,
                            size: 32,
                          ),
                          SizedBox(width: 6,),
                          Text(
                            'Favs',
                            style: TextStyle(
                              color: showTab == 1 ? Colors.white : Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
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
