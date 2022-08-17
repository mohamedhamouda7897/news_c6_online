import 'package:flutter/material.dart';
import 'package:news_c6_online/models/SourcesResponse.dart';

class TabItem extends StatelessWidget {

  Sources sources;
  bool isSelected;
  TabItem(this.sources,this.isSelected);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8,horizontal: 24),
      margin: EdgeInsets.only(top: 8),
      decoration: BoxDecoration(
        
        color: isSelected ? Colors.green : Colors.transparent ,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.green),
      ),
      child: Text('${sources.name }',style: TextStyle(
        color: isSelected ? Colors.white : Colors.green
      ),),
    );
  }
}
