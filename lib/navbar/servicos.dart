import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../sidemenu/consorcios.dart';
import '../navbar/home.dart';
class Servicos extends StatelessWidget {
  const Servicos({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         iconTheme: IconThemeData(
    color:  Color(0xFFD8B45E), // Define a cor desejada para o ícone
  ),      
backgroundColor: Colors.transparent,
        elevation: 0,  title: Text(
    'PRIORIZZA',
    textAlign: TextAlign.center,
    style: TextStyle(
      color: Color(0xFFD8B45E),
    ),
  ),
  actions: [
    TextButton(
  onPressed: () {Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Inicio()),
            );
  },
  child: Text('Início',style: TextStyle(
      color: Color(0xFFD8B45E),
    ),
    ),
),
TextButton(
  onPressed: () {Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Consorcios()),
            );
  },
  child: Text('Assembleias',style: TextStyle(
      color: Color(0xFFD8B45E),
    ),
    ),
),
TextButton(
  onPressed: () {
    launch('https://blog.priorizza.app');
  },
  child: Text('Blog',style: TextStyle(
      color: Color(0xFFD8B45E),
    ),
    ),
),   
  ],            
        ),
      
      body: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          ListTile(
            title: Text('Parcelas'),
          ),
          ListTile(
            leading: Icon(
              Icons.receipt_long,
            ),
            title: Text('Boletos'),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(
              Icons.arrow_forward,
            ),
            title: Text('Antecipar parcelas'),
            onTap: () => {},
          ),
          ListTile(
            title: Text('Assembleias'),
          ),
          ListTile(
            leading: Icon(
              Icons.attach_money,
            ),
            title: Text('Ofertas de lance'),
            onTap: () => {},
          ),
          ListTile(
            title: Text('Dados Cadastrais'),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Dados cadastrais'),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.lock),
            title: Text('Alterar senha'),
            onTap: () => {},
          ),
        ],
      ),
    );
  }
}
