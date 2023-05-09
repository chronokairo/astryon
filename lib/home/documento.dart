import 'package:flutter/material.dart';

class DocumentsScreen extends StatelessWidget {
  final List<String> documents = [
    'Contrato de consórcio',
    'Comprovante de pagamento da parcela 1',
    'Comprovante de pagamento da parcela 2',
    'Comprovante de pagamento da parcela 3',
    'Comprovante de pagamento da parcela 4',
    'Comprovante de pagamento da parcela 5',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Acesso a documentos'),
      ),
      body: ListView.builder(
        itemCount: documents.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(documents[index]),
            leading: const Icon(Icons.description),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              // Aqui você pode adicionar a lógica para acessar o documento
              // e exibi-lo na tela.
            },
          );
        },
      ),
    );
  }
}
