import 'package:flutter/material.dart';
import '../paginas/areadocliente/loginscreen/userinfo.dart';
import '../theme/appcolors.dart';

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
      backgroundColor: Colors.grey[100], // Add background color for separation
      body: ListView.builder(
        itemCount: filteredRows.length,
        itemBuilder: (context, index) {
          List<dynamic> row = filteredRows[index];
          String username = row[4].toString();
          String email = row[8].toString();
          String adesao = row[19].toString(); // Nova coluna: Adesão
          String ddd = row[6].toString(); // Nova coluna: DDD
          String celular = row[7].toString(); // Nova coluna: Celular
          String contract = row[0].toString(); // Nova coluna: Contrato
          String group = row[1].toString(); // Nova coluna: Grupo
          String quota = row[2].toString(); // Nova coluna: Cota
          String sequence = row[3].toString(); // Nova coluna: Sequência
          String contemplacao = row[13].toString(); // Nova coluna: Contemplação
          String stGrupo = row[11].toString(); // Nova coluna: Status do Grupo
          String stCota = row[12].toString(); // Nova coluna: Status da Cota

          return Card(
            elevation: 2, // Add elevation for a subtle shadow effect
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 8),
                  Center(
                    child: Column(
                      children: [
                        const Icon(Icons.person,
                            color: AppColors.primaryColor, size: 50),
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
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),
                  Divider(
                    color: Colors.grey[400],
                    thickness: 1.5,
                    height: 24,
                  ),
                  const SizedBox(height: 8),
                  _buildInfoRow(Icons.calendar_today, "Data de Adesão", adesao),
                  const SizedBox(height: 8),
                  _buildInfoRow(Icons.phone, "Celular", "($ddd) $celular"),
                  const SizedBox(height: 24),
                  _buildInfoGrid([
                    _buildInfoItem(Icons.check, "Contrato", contract),
                    _buildInfoItem(Icons.check, "Grupo", group),
                    _buildInfoItem(Icons.check, "Cota", quota),
                    _buildInfoItem(Icons.check, "Sequência", sequence),
                    _buildInfoItem(Icons.star, "Contemplação", contemplacao),
                    _buildInfoItem(Icons.star, "Status do Grupo", stGrupo),
                    _buildInfoItem(Icons.star, "Status da Cota", stCota),
                  ]),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildInfoRow(IconData icon, String label, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: AppColors.primaryColor),
        const SizedBox(width: 8),
        Text(
          "$label: ",
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(width: 8),
        Text(
          value,
          style: const TextStyle(fontSize: 18),
        ),
      ],
    );
  }

  Widget _buildInfoGrid(List<Widget> children) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
      ),
      itemCount: children.length,
      itemBuilder: (context, index) {
        return Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(8),
          ),
          child: children[index],
        );
      },
    );
  }

  Widget _buildInfoItem(IconData icon, String label, String value) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: AppColors.primaryColor),
          const SizedBox(height: 8),
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
    );
  }
}
