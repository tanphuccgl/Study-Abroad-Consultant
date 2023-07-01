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

final visaEmpty = UniversityVisaData(
  universityName: 'University of Oxford',
  countryName: 'Anh',
  visaInformation: [
    VisaInformation(
      title: 'Student Visa',
      description:
          'International students need to apply for a Tier 4 (General) student visa to study at the University of Oxford. The visa process may involve submitting required documents, attending a visa interview, and providing proof of financial support.',
    ),
    VisaInformation(
      title: 'Visa Validity',
      description:
          'The Tier 4 student visa allows you to stay in the UK for the duration of your academic program. You may also be eligible for the Tier 4 Doctorate Extension Scheme (DES) after completing your studies.',
    ),
  ],
  entryProcedures: [
    EntryProcedures(
      title: 'Arrival at UK Port of Entry',
      description:
          'Upon arrival at a UK port of entry, you will need to present your valid passport, Tier 4 student visa, and any other required documents. The UK Border Force officer will review your documents and may ask questions about your purpose of travel and your studies at the University of Oxford.',
    ),
    EntryProcedures(
      title: 'Biometric Residence Permit (BRP)',
      description:
          'After arriving in the UK, you will need to collect your Biometric Residence Permit (BRP) from a designated Post Office. The BRP is an important immigration document that confirms your permission to stay in the UK and includes your immigration details.',
    ),
  ],
);
