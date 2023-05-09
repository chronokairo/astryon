import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';

import 'login.dart';

class Assembleias extends StatefulWidget {
  const Assembleias({super.key});
  @override
  State<Assembleias> createState() { return _AssembleiasState();}
}

class _AssembleiasState extends State<Assembleias>
    with AutomaticKeepAliveClientMixin<Assembleias> {
 

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return  Scaffold(
	appBar: AppBar(
		title: const Text("Assembleias"),
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
	body: Center(
        child: HtmlWidget(
              '<iframe src="https://consorcioroma.com.br/assembleias"></iframe>',
              factoryBuilder: () => MyWidgetFactory(),
            ),
        
      ),//Center
	//Scaffold
//Removing Debug Banner
);

  }

  @override
  bool get wantKeepAlive => true;
}