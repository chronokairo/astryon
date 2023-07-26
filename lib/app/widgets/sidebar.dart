import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import '../paginas/areadocliente/loginscreen/userinfo.dart';
import 'myfooter.dart';

class SideBar extends StatelessWidget {
  final String column2;
  final String column3;
  final String column6;

  const SideBar({
    Key? key,
    required this.column2,
    required this.column3,
    required this.column6,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<List<dynamic>> filteredRows = csvData.where((row) {
      return row[1].toString() == column2 &&
          row[2].toString() == column3 &&
          row[5].toString() == column6;
    }).toList();

    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        // Wrap with SingleChildScrollView to enable scrolling
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: LayoutBuilder(
            builder: (context, constraints) {
              // Check if the screen width is less than a certain breakpoint (e.g., 600) for mobile layout
              bool isMobile = constraints.maxWidth < 600;
              return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: filteredRows
                    .map(
                      (row) => isMobile
                          ? _buildInfoCardMobile(row)
                          : _buildInfoCard(row),
                    )
                    .toList(),
              );
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          launchWhatsApp();
        },
        backgroundColor: const Color(0xFF25D366),
        child: const FaIcon(
          FontAwesomeIcons.whatsapp,
          color: Colors.white,
        ),
      ),
    );
  }

  void launchWhatsApp() async {
    String phoneNumber = '+5592985080304'; // Número de telefone do destinatário
    String message =
        'Olá, eu gostaria de saber mais!!'; // Mensagem a ser enviada
    String whatsappUrl =
        'https://wa.me/$phoneNumber?text=${Uri.encodeFull(message)}';

    // ignore: deprecated_member_use
    if (await canLaunch(whatsappUrl)) {
      // ignore: deprecated_member_use
      await launch(whatsappUrl);
    } else {
      throw 'Não foi possível abrir o WhatsApp.';
    }
  }

  Widget _buildInfoCard(List<dynamic> row) {
    String username = row[4].toString();
    String email = row[8].toString();
    String adesao = row[19].toString();
    String ddd = row[6].toString();
    String celular = row[7].toString();
    String contract = row[0].toString();
    String group = row[1].toString();
    String quota = row[2].toString();
    String sequence = row[3].toString();
    String contemplacao = row[13].toString();
    String stGrupo = row[11].toString();
    String stCota = row[12].toString();
    String pa = row[10].toString();

    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 8),
            Center(
              child: Column(
                children: [
                  const SizedBox(height: 8),
                  Text(
                    contract,
                    style: const TextStyle(
                      fontSize: 18,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Icon(Icons.person, color: Color(0x99000000), size: 50),
                  const SizedBox(height: 8),
                  Text(
                    username,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    email,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey[600],
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    "($ddd) $celular",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey[600],
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildInfoItem(
                          Icons.calendar_today, "Data de Adesão", adesao),
                      _buildInfoItem(Icons.star, "Contemplação", contemplacao),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildInfoItem(Icons.group, "Grupo", group),
                      _buildInfoItem(Icons.description, "Cota", quota),
                      _buildInfoItem(Icons.star, "Status do Grupo", stGrupo),
                      _buildInfoItem(Icons.star, "Status da Cota", stCota),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildInfoItem(Icons.payment, "Pagamentos em Atraso", pa),
                      _buildInfoItem(Icons.calendar_month,
                          "Dias de Inadimplência", sequence),
                    ],
                  ),
                  const MyFooter(),
                ],
              ),
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoCardMobile(List<dynamic> row) {
    String username = row[4].toString();
    String email = row[8].toString();
    String adesao = row[19].toString();
    String ddd = row[6].toString();
    String celular = row[7].toString();
    String contract = row[0].toString();
    String group = row[1].toString();
    String quota = row[2].toString();
    String sequence = row[3].toString();
    String contemplacao = row[13].toString();
    String stGrupo = row[11].toString();
    String stCota = row[12].toString();
    String pa = row[10].toString();

    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 8),
            Center(
              child: Column(
                children: [
                  const SizedBox(height: 8),
                  Text(
                    contract,
                    style: const TextStyle(
                      fontSize: 18,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Icon(Icons.person, color: Color(0x99000000), size: 50),
                  const SizedBox(height: 8),
                  Text(
                    username,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    email,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey[600],
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    "($ddd) $celular",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey[600],
                    ),
                  ),
                  const SizedBox(height: 8),
                  _buildInfoItem(
                      Icons.calendar_today, "Data de Adesão", adesao),
                  _buildInfoItem(Icons.star, "Contemplação", contemplacao),
                  _buildInfoItem(Icons.group, "Grupo", group),
                  _buildInfoItem(Icons.description, "Cota", quota),
                  _buildInfoItem(Icons.star, "Status do Grupo", stGrupo),
                  _buildInfoItem(Icons.star, "Status da Cota", stCota),
                  _buildInfoItem(Icons.payment, "Pagamentos em Atraso", pa),
                  _buildInfoItem(
                      Icons.calendar_month, "Dias de Inadimplência", sequence),
                  const MyFooter(),
                ],
              ),
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoItem(IconData icon, String label, String value) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              icon,
              color: const Color(0x99000000),
            ),
            const SizedBox(width: 8),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "$label: ",
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  value,
                  style: const TextStyle(fontSize: 16),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
