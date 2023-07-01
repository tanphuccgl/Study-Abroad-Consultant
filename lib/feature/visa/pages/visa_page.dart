import 'package:flutter/material.dart';
import 'package:study_abroad_consultant/network/model/visa.dart';

class VisaPage extends StatelessWidget {
  final UniversityVisaData universityVisaData;
  const VisaPage({
    super.key,
    required this.universityVisaData,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Visa và thủ tục nhập cảnh'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                universityVisaData.universityName,
                style: const TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Country: ${universityVisaData.countryName}',
                style: const TextStyle(
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Visa Information',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: universityVisaData.visaInformation.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(
                    universityVisaData.visaInformation[index].title,
                    style: const TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    universityVisaData.visaInformation[index].description,
                  ),
                );
              },
            ),
            const SizedBox(height: 16.0),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Entry Procedures',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: universityVisaData.entryProcedures.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(
                    universityVisaData.entryProcedures[index].title,
                    style: const TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    universityVisaData.entryProcedures[index].description,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
