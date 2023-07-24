import 'package:flutter/material.dart';

import '../paginas/areadocliente/loginscreen/userinfo.dart';

class SideBar extends StatefulWidget {
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
  SideBarState createState() => SideBarState();
}

class SideBarState extends State<SideBar> {
  int? selectedRow; // Track the selected row index

  @override
  Widget build(BuildContext context) {
    List<List<dynamic>> filteredRows = csvData.where((row) {
      return row[1].toString() == widget.column2 &&
          row[2].toString() == widget.column3 &&
          row[5].toString() == widget.column6;
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text("Main Page"),
      ),
      body: ListView.builder(
        itemCount: filteredRows.length,
        itemBuilder: (context, index) {
          List<dynamic> row = filteredRows[index];
          String username = row[4].toString();
          String email = row[8].toString();
          String contract = row[0].toString(); // New Column: Contract
          String group = row[1].toString(); // New Column: Group
          String quota = row[2].toString(); // New Column: Quota
          String sequence = row[3].toString(); // New Column: Sequence
          String consorciado = row[5].toString(); // New Column: Consorciado
          String documento = row[6].toString(); // New Column: Documento
          String ddd = row[9].toString(); // New Column: DDD
          String celular = row[10].toString(); // New Column: Celular
          String adesao = row[11].toString(); // New Column: Adesao
          String pa = row[12].toString(); // New Column: PA
          String stGrupo = row[13].toString(); // New Column: St Grupo
          String stCota = row[14].toString(); // New Column: St Cota
          String contemplacao = row[15].toString(); // New Column: Contemplacao

          return InkWell(
            onTap: () {
              setState(() {
                selectedRow = index;
              });
            },
            child: Card(
              color: selectedRow == index ? Colors.grey[200] : Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.person, color: Colors.blue),
                        SizedBox(width: 16),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                username,
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 4),
                              Text(
                                email,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey[600],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      color: Colors.grey[400],
                      thickness: 1.5,
                      height: 24,
                    ),
                    Text(
                      "Contract: $contract",
                      style: TextStyle(fontSize: 14),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "Group: $group",
                      style: TextStyle(fontSize: 14),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "Quota: $quota",
                      style: TextStyle(fontSize: 14),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "Sequence: $sequence",
                      style: TextStyle(fontSize: 14),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "Consorciado: $consorciado",
                      style: TextStyle(fontSize: 14),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "Documento: $documento",
                      style: TextStyle(fontSize: 14),
                    ),
                    SizedBox(height: 16),
                    Row(
                      children: [
                        Icon(Icons.phone, color: Colors.blue),
                        SizedBox(width: 16),
                        Text(
                          "Phone:",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 8),
                        Text(
                          "($ddd) $celular",
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    Row(
                      children: [
                        Icon(Icons.calendar_today, color: Colors.blue),
                        SizedBox(width: 16),
                        Text(
                          "Adesão:",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 8),
                        Text(
                          adesao,
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    Row(
                      children: [
                        Icon(Icons.check, color: Colors.blue),
                        SizedBox(width: 16),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Status Grupo:",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 4),
                              Text(
                                stGrupo,
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    Row(
                      children: [
                        Icon(Icons.check, color: Colors.blue),
                        SizedBox(width: 16),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Status Cota:",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 4),
                              Text(
                                stCota,
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.blue),
                        SizedBox(width: 16),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Contemplação:",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 4),
                              Text(
                                contemplacao,
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
