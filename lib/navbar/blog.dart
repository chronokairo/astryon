import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';

import 'login.dart';

class Blog extends StatefulWidget {
  const Blog({super.key});
  @override
  State<Blog> createState() {
    return _BlogState();
  }
}

class _BlogState extends State<Blog> with AutomaticKeepAliveClientMixin<Blog> {
 
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold( //AppBar
      body: GridView.count(
        crossAxisCount: 1,
        children: [
          HtmlWidget(
            '<iframe src="https://blog.priorizza.app"></iframe>',
            factoryBuilder: () => MyWidgetFactory(),
          ),
        ],
      ), //Center
      //Scaffold
//Removing Debug Banner
    );
  }

  @override
  bool get wantKeepAlive => true;
}
