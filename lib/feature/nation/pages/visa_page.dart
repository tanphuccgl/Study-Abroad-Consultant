import 'package:flutter/material.dart';

class UniversityVisaPage extends StatelessWidget {
  const UniversityVisaPage({super.key});

  @override
  Widget build(BuildContext context) {
    final universityVisaData = universityVisaData1.first;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Visa and Entry Procedures'),
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

class VisaInformation {
  final String title;
  final String description;

  VisaInformation({required this.title, required this.description});
}

class EntryProcedures {
  final String title;
  final String description;

  EntryProcedures({required this.title, required this.description});
}

class UniversityVisaData {
  final String universityName;
  final String countryName;
  final List<VisaInformation> visaInformation;
  final List<EntryProcedures> entryProcedures;

  UniversityVisaData({
    required this.universityName,
    required this.countryName,
    required this.visaInformation,
    required this.entryProcedures,
  });
}

List<UniversityVisaData> universityVisaData1 = [
  UniversityVisaData(
    universityName: 'Harvard University',
    countryName: 'Mỹ',
    visaInformation: [
      VisaInformation(
        title: 'Student Visa',
        description:
            'You need to apply for a student visa (F-1 visa) to study at Harvard University. The visa process may involve submitting required documents, attending an interview at the U.S. embassy or consulate, and paying the visa application fee.',
      ),
      VisaInformation(
        title: 'Visa Validity',
        description:
            'The F-1 student visa allows you to stay in the U.S. for the duration of your academic program. You may also be eligible for Optional Practical Training (OPT) after completing your studies.',
      ),
    ],
    entryProcedures: [
      EntryProcedures(
        title: 'Arrival at U.S. Port of Entry',
        description:
            'Upon arrival at a U.S. port of entry, you will need to present your valid passport, F-1 visa, I-20 form issued by Harvard University, and any other required documents. The U.S. Customs and Border Protection (CBP) officer will review your documents and may ask questions about your purpose of travel.',
      ),
      EntryProcedures(
        title: 'SEVIS Registration',
        description:
            'Once you have arrived in the U.S., you must complete the Student and Exchange Visitor Information System (SEVIS) registration process. This involves providing your local U.S. address, updating your contact information, and confirming your enrollment at Harvard University.',
      ),
    ],
  ),
  // Thêm thông tin cho các trường đại học khác ở đây
];
