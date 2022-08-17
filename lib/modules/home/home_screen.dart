import 'package:flutter/material.dart';
import 'package:news_c6_online/models/SourcesResponse.dart';
import 'package:news_c6_online/modules/home/tabscontroller.dart';
import 'package:news_c6_online/shared/network/remote/api_manager.dart';

class HomeScreen extends StatelessWidget {

  static const String routeName='home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('News app'),
      ),
      body: Container(
        child: FutureBuilder<SourcesResponse>(
          future: ApiManager.getSources() ,
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
      ),
    );
  }
}
