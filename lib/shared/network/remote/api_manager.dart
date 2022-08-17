
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news_c6_online/models/NewsResponse.dart';
import 'package:news_c6_online/models/SourcesResponse.dart';

import '../../components/constant.dart';

class ApiManager{


  static Future<SourcesResponse> getSources() async{
    // call api
    var uri =Uri.https(BASEURl, '/v2/top-headlines/sources',{"apikey":APIKEY});
    var response =  await http.get(uri);
    try{
        var bodyString=   response.body;
        var json = jsonDecode(bodyString);
        var sourcesResponse=SourcesResponse.fromJson(json);
        return sourcesResponse;
    }catch(e){
      throw e;
    }
  }


  static Future<NewsResponse> getNews(Sources source)async{
    var uri =Uri.https(BASEURl, '/v2/everything',{"apikey":APIKEY,"sources":source.id});
    var response =  await http.get(uri);
    try{
      var bodyString=   response.body;
      var json = jsonDecode(bodyString);
      var newsResponse=NewsResponse.fromJson(json);
      return newsResponse;
    }catch(e){
      throw e;
    }
  }

}