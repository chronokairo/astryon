import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';

import 'login.dart';

class SejaParceiro extends StatefulWidget {
  const SejaParceiro({super.key});
  @override
  State<SejaParceiro> createState() {
    return _SejaParceiroState();
  }
}

class _SejaParceiroState extends State<SejaParceiro>
    with AutomaticKeepAliveClientMixin<SejaParceiro> {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Quem Somos?"),
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
      ), //AppBar
      body: GridView.count(
        crossAxisCount: 1,
        children: [
          HtmlWidget(
            '<iframe src="https://consorcioroma.com.br/seja-nosso-parceiro/"></iframe>',
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
