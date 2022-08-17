import 'package:flutter/material.dart';
import 'package:news_c6_online/modules/home/news.dart';
import 'package:news_c6_online/modules/home/tabItem.dart';

import '../../models/SourcesResponse.dart';


class TabControllerItem extends StatefulWidget {

  List<Sources> sources;
  TabControllerItem(this.sources);

  @override
  State<TabControllerItem> createState() => _TabControllerItemState();
}

class _TabControllerItemState extends State<TabControllerItem> {
  int isSelectedIndex=0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DefaultTabController(length: widget.sources.length,
            child: TabBar(
              isScrollable: true,
              indicatorColor: Colors.transparent,
              onTap: (index){
                isSelectedIndex=index;
                setState(() {

                });
              },
              tabs: widget.sources.map((Onesource) =>
                  TabItem(Onesource, isSelectedIndex==widget.sources.indexOf(Onesource))).toList(),
            )),
        Expanded(child: NewsData(widget.sources[isSelectedIndex])),

      ],
    );
  }
}
