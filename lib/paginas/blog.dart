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
    return Scaffold(
      appBar: AppBar(
        title: const Text("Blog"),
        titleSpacing: 00.0,
        centerTitle: true,
        toolbarHeight: 60.2,
        toolbarOpacity: 0.8,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(25),
              bottomLeft: Radius.circular(25)),
        ),
        elevation: 0.00,
      ),
      body: Center(
        child: HtmlWidget(
          '<iframe src="https://consorcioroma.com.br/blog/"></iframe>',
          factoryBuilder: () => MyWidgetFactory(),
        ),
      ), //Center
      //Scaffold
//Removing Debug Banner
    );
  }

  @override
  bool get wantKeepAlive => true;
}
