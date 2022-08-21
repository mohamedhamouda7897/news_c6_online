import 'package:flutter/material.dart';

import '../../models/NewsResponse.dart';

class NewsItem extends StatelessWidget {

  Articles articles;
  NewsItem(this.articles);

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      padding: EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.network(articles.urlToImage??"",
          height: 180,fit: BoxFit.cover,),
          SizedBox(height: 10,),
          Text(articles.author??"",style: Theme.of(context).textTheme.subtitle1,),
          SizedBox(height: 5,),
          Text(articles.title??"",style: Theme.of(context).textTheme.headline1,),
          SizedBox(height: 5,),
          Text(articles.publishedAt??"",textAlign: TextAlign.right,style: Theme.of(context).textTheme.headline3,),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
