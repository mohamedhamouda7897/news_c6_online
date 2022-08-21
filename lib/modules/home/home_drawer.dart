import 'package:flutter/material.dart';

class HomeDrawer extends StatelessWidget {

  static const int CATEGORY=1;
  static const int SETTING=2;

  Function onMenuItemClicked;
  HomeDrawer(this.onMenuItemClicked);

  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Container(
      color: Colors.white,
      width: size.width * .70,
      child: Column(
        children: [
          Container(
            color: Theme.of(context).primaryColor,
            padding: EdgeInsets.symmetric(vertical: 70),
            width: double.infinity,
            child:Center(child: Text('News App',style: Theme.of(context).textTheme.headline1!.copyWith(
              fontSize: 32
            ),)) ,
          ),
          InkWell(
            onTap: (){
              onMenuItemClicked(CATEGORY);
            },
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(children: [
                Icon(Icons.list,),
                SizedBox(width: 5,),
                Text('Categories',style: TextStyle(fontSize: 21),)
              ],),
            ),
          ),
          InkWell
            (
            onTap: (){

              onMenuItemClicked(SETTING);
            },
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(children: [
                Icon(Icons.settings,),
                SizedBox(width: 5,),
                Text('Settings',style: TextStyle(fontSize: 21),)
              ],),
            ),
          )


        ],
      ),
    );
  }
}
