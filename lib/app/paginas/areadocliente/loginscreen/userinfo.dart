import 'package:csv/csv.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:priorizza/app/widgets/myappbar.dart';


class MainPage extends StatelessWidget {
  final String column2;
  final String column3;
  final String column6;

  const MainPage(
      {super.key,
      required this.column2,
      required this.column3,
      required this.column6});

  @override
  Widget build(BuildContext context) {
    List<List<dynamic>> filteredRows = csvData.where((row) {
      return row[1].toString() == column2 &&
          row[2].toString() == column3 &&
          row[5].toString() == column6;
    }).toList();

    return Scaffold(      
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                "assets/background_image.png"), // Substitua pelo caminho da sua imagem de background
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView.builder(
            itemCount: filteredRows.length,
            itemBuilder: (context, index) {
              List<dynamic> row = filteredRows[index];

              // Assuming the length of headers and row is the same.
              // Adjust accordingly if they are not.
              return Card(
                elevation: 4,
                color: const Color(0x99000000),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      for (int i = 0; i < row.length; i++)
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: Text(
                            "${headers[i]}: ${row[i]}",
                            style: const TextStyle(color: Colors.white),
                          ),
                        ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

List<List<dynamic>> csvData = [];
List<dynamic> headers = [];

Future<void> loadAsset() async {
  try {
    final myData = await rootBundle.loadString("assets/resultados.csv");
    List<List<dynamic>> csvTable = const CsvToListConverter().convert(myData);

    // Skip the first row and save it as headers
    if (csvTable.isNotEmpty) {
      headers = csvTable.removeAt(0);
    }

    // Filter rows with the first column not empty
    csvTable = csvTable.where((row) => row.isNotEmpty && row[0] != "").toList();

    csvData = csvTable;
  } catch (e) {
    // Handle error loading CSV data
    // Here you can display a dialog box or a snackbar for the user
  }
}

