import '../../models/categroy_model.dart';
import 'package:flutter/material.dart';

import 'category_item.dart';

class CategoriesFragment extends StatelessWidget {

  var ctegories=Category.getCategories();
  Function onCategoryClicked;
  CategoriesFragment(this.onCategoryClicked);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(18),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Pick your category of interest',style: TextStyle(
              fontSize: 30
            ),),
            SizedBox(height: 25,),
            Expanded(
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                  ),
                  itemCount: ctegories.length,
                  itemBuilder: (c,index){
                    return InkWell(
                        onTap: (){
                          onCategoryClicked(ctegories[index]);
                        },
                        child: CategoryWidget(ctegories[index],index));
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
