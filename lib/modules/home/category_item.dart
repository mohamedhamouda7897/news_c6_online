import 'package:flutter/material.dart';

import '../../models/categroy_model.dart';

class CategoryWidget extends StatelessWidget {

  Category category;
  int index;
  CategoryWidget(this.category,this.index);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: category.ColorCode,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(12),
          topLeft: Radius.circular(12),
          bottomLeft:   Radius.circular(index%2==0?12:0),
          bottomRight:Radius.circular(index%2!=0?12:0),
        )

      ),
      child: Column(
        children: [
          Image.asset(category.image,height: 120,fit: BoxFit.fill,),
          Expanded(child: Center(child: Text(category.title
            ,style: Theme.of(context).textTheme.headline1?.copyWith(
              color: Colors.white,
                fontSize: 25
            ),))),
        ],
      ),
    );
  }
}
