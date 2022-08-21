
import 'package:flutter/material.dart';
import 'package:news_c6_online/modules/home/news_fragment.dart';
import '../../models/categroy_model.dart';
import 'package:news_c6_online/modules/home/categories_fragment.dart';


import 'home_drawer.dart';

class HomeScreen extends StatefulWidget {

  static const String routeName='home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('News app'),
      ),
      drawer: HomeDrawer(onMenuItemClicked),
      body: selectedCategory==null?CategoriesFragment(onCatgoryClicked)
          :NewsFragment(selectedCategory!)
    );
  }

  Category? selectedCategory;


  void onMenuItemClicked(int itemCliked){
Navigator.pop(context);

if(itemCliked==HomeDrawer.CATEGORY){
  selectedCategory=null;
  setState(() {

  });
}else if(itemCliked==HomeDrawer.SETTING){

}

  }

  void onCatgoryClicked(Category category){
    // change ui body
    selectedCategory=category;
    setState(() {

    });
  }
}
