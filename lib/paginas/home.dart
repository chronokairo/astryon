import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';
import 'package:priorizza/paginas/login.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> with AutomaticKeepAliveClientMixin<Home> {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size(double.infinity, 65),
          child: AppBar(
            centerTitle: true,
            toolbarHeight: 60.2,
            toolbarOpacity: 0.8,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(25),
                  bottomLeft: Radius.circular(25)),
            ),
            elevation: 0.00,
            flexibleSpace: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 0),
                      const Text("PRIORIZZA", style: TextStyle(fontSize: 25)),
                      Expanded(
                          child: Container(
                              alignment: Alignment.centerLeft,
                              child: const Text("Grupo de Investimento",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 15))))
                    ])),
          )),
      body: GridView.count(
        crossAxisCount: 1,
        children: [
          HtmlWidget(
            '<iframe src="https://portal.consorcioroma.com.br/producao/roma/a-revenda.php"></iframe>',
            factoryBuilder: () => MyWidgetFactory(),
          ),
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
