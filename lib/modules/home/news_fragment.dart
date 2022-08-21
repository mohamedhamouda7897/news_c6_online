
import 'package:flutter/material.dart';
import 'package:news_c6_online/modules/home/tabscontroller.dart';

import '../../models/SourcesResponse.dart';
import '../../models/categroy_model.dart';
import '../../shared/network/remote/api_manager.dart';

class NewsFragment extends StatelessWidget {
  Category category;
  NewsFragment(this.category);

  @override
  Widget build(BuildContext context) {
    return  Container(
      child: FutureBuilder<SourcesResponse>(
        future: ApiManager.getSources(category.id) ,
        builder: (c,snapShot){
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

          // i have data
          var SourcesList=snapShot.data?.sources ??[];
          return TabControllerItem(SourcesList);
        },
      ),
    );
  }
}
