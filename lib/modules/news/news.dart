import 'package:flutter/material.dart';
import 'package:news_c6_online/models/NewsResponse.dart';
import 'package:news_c6_online/models/SourcesResponse.dart';
import 'package:news_c6_online/modules/news/news_item.dart';
import 'package:news_c6_online/shared/network/remote/api_manager.dart';

class NewsData extends StatelessWidget {

  Sources newsSource;
  NewsData(this.newsSource);
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<NewsResponse>(
        future: ApiManager.getNews(newsSource,""),
        builder: (_,snapShot){
          if(snapShot.connectionState == ConnectionState.waiting){
            return Center(child: CircularProgressIndicator());
          }
          if(snapShot.hasError){
            return Column(
              children: [
                Text('Something went wrong'),
                ElevatedButton(onPressed: (){}, child: Text('Try Again')),
              ],
            );
          }
          if("ok" != snapShot.data?.status){ // error
            return Column(
              children: [
                Text('Something went wrong'),
                ElevatedButton(onPressed: (){}, child: Text('Try Again')),
              ],
            );
          }
          
          var newsList=snapShot.data?.articles ?? [];
          return ListView.builder(
              itemCount: newsList.length,
              itemBuilder:(c,index){
                return NewsItem(newsList[index]);
                // return Text(newsList[index].title ?? "");
              } ) ;
          
        });
  }
}
