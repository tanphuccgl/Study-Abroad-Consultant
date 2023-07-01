import 'package:study_abroad_consultant/network/model/visa.dart';

class University {
  final String id;
  final String name;
  final String country;
  final String city;
  final List<String> programs;
  final String website;
  final double tuitionFee;
  final double livingCost;
  final String description;
  final double rating;
  final int ranking;
  final UniversityVisaData visa;

  University({
    required this.id,
    required this.name,
    required this.country,
    required this.city,
    required this.programs,
    required this.website,
    required this.tuitionFee,
    required this.livingCost,
    required this.description,
    required this.rating,
    required this.ranking,
    required this.visa,
  });
}

final emtpyuniversity = University(
  id: '1',
  name: 'University of Oxford',
  country: 'Anh',
  city: 'Oxford',
  programs: ['Medicine', 'Law', 'Computer Science', 'Engineering'],
  website: 'https://www.ox.ac.uk/',
  tuitionFee: 25000,
  livingCost: 12000,
  description:
      'The University of Oxford is a prestigious institution known for its academic excellence and rich history.',
  rating: 4.8,
  ranking: 1,
  visa: UniversityVisaData(
    universityName: 'Massachusetts Institute of Technology (MIT)',
    countryName: 'Mỹ',
    visaInformation: [
      VisaInformation(
        title: 'Student Visa',
        description:
            'You need to apply for a student visa (F-1 visa) to study at Massachusetts Institute of Technology (MIT). The visa process may involve submitting required documents, attending an interview at the U.S. embassy or consulate, and paying the visa application fee.',
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
            'Upon arrival at a U.S. port of entry, you will need to present your valid passport, F-1 visa, I-20 form issued by Massachusetts Institute of Technology (MIT), and any other required documents. The U.S. Customs and Border Protection (CBP) officer will review your documents and may ask questions about your purpose of travel.',
      ),
      EntryProcedures(
        title: 'SEVIS Registration',
        description:
            'Once you have arrived in the U.S., you must complete the Student and Exchange Visitor Information System (SEVIS) registration process. This involves providing your local U.S. address, updating your contact information, and confirming your enrollment at Massachusetts Institute of Technology (MIT).',
      ),
    ],
  ),
);
List<University> universities = [
  University(
    id: '1',
    name: 'University of Oxford',
    country: 'Anh',
    city: 'Oxford',
    programs: ['Medicine', 'Law', 'Computer Science', 'Engineering'],
    website: 'https://www.ox.ac.uk/',
    tuitionFee: 25000,
    livingCost: 12000,
    description:
        'The University of Oxford is a prestigious institution known for its academic excellence and rich history.',
    rating: 4.8,
    ranking: 1,
    visa: UniversityVisaData(
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
    ),
  ),
  University(
    id: '2',
    name: 'University of Cambridge',
    country: 'Anh',
    city: 'Cambridge',
    programs: [
      'Natural Sciences',
      'Economics',
      'History',
      'English Literature'
    ],
    website: 'https://www.cam.ac.uk/',
    tuitionFee: 26000,
    livingCost: 11000,
    description:
        'The University of Cambridge is one of the oldest and most renowned universities in the world.',
    rating: 4.7,
    ranking: 2,
    visa: UniversityVisaData(
      universityName: 'University of Cambridge',
      countryName: 'Anh',
      visaInformation: [
        VisaInformation(
          title: 'Student Visa',
          description:
              'International students need to apply for a Tier 4 (General) student visa to study at the University of Cambridge. The visa process may involve submitting required documents, attending a visa interview, and providing proof of financial support.',
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
              'Upon arrival at a UK port of entry, you will need to present your valid passport, Tier 4 student visa, and any other required documents. The UK Border Force officer will review your documents and may ask questions about your purpose of travel and your studies at the University of Cambridge.',
        ),
        EntryProcedures(
          title: 'Biometric Residence Permit (BRP)',
          description:
              'After arriving in the UK, you will need to collect your Biometric Residence Permit (BRP) from a designated Post Office. The BRP is an important immigration document that confirms your permission to stay in the UK and includes your immigration details.',
        ),
      ],
    ),
  ),
  University(
    id: '3',
    name: 'Imperial College London',
    country: 'Anh',
    city: 'London',
    programs: ['Engineering', 'Medicine', 'Computer Science', 'Business'],
    website: 'https://www.imperial.ac.uk/',
    tuitionFee: 28000,
    livingCost: 13000,
    description:
        'Imperial College London is a leading institution in science, engineering, medicine, and business.',
    rating: 4.6,
    ranking: 3,
    visa: UniversityVisaData(
      universityName: 'Imperial College London',
      countryName: 'Anh',
      visaInformation: [
        VisaInformation(
          title: 'Student Visa',
          description:
              'International students need to apply for a Tier 4 (General) student visa to study at Imperial College London. The visa process may involve submitting required documents, attending a visa interview, and providing proof of financial support.',
        ),
        VisaInformation(
          title: 'Visa Validity',
          description:
              'The Tier 4 student visa allows you to stay in the UK for the duration of your academic program. You may also be eligible to work part-time during your studies and full-time during vacation periods.',
        ),
      ],
      entryProcedures: [
        EntryProcedures(
          title: 'Arrival in the UK',
          description:
              'Upon arrival in the UK, you will need to present your valid passport, visa, and Confirmation of Acceptance for Studies (CAS) document issued by Imperial College London to the immigration officer at the port of entry. They may ask questions about your purpose of visit and your study plans.',
        ),
        EntryProcedures(
          title: 'Biometric Residence Permit (BRP)',
          description:
              'Within 10 days of your arrival, you must collect your Biometric Residence Permit (BRP) from a designated collection point. The BRP serves as your official immigration document and includes your visa details, length of stay, and any work or study restrictions.',
        ),
      ],
    ),
  ),
  // ... (các đối tượng University khác)
];
List<University> universities1 = [
  University(
    id: '4',
    name: 'Sorbonne University',
    country: 'Pháp',
    city: 'Paris',
    programs: ['Arts', 'Sciences', 'Medicine', 'Law'],
    website: 'https://www.sorbonne-universite.fr/',
    tuitionFee: 20000,
    livingCost: 10000,
    description:
        'Sorbonne University is a renowned institution with a long history of academic excellence.',
    rating: 4.5,
    ranking: 1,
    visa: UniversityVisaData(
      universityName: 'Imperial College London',
      countryName: 'Anh',
      visaInformation: [
        VisaInformation(
          title: 'Student Visa',
          description:
              'International students need to apply for a Tier 4 (General) student visa to study at Imperial College London. The visa process may involve submitting required documents, attending a visa interview, and providing proof of financial support.',
        ),
        VisaInformation(
          title: 'Visa Validity',
          description:
              'The Tier 4 student visa allows you to stay in the UK for the duration of your academic program. You may also be eligible to work part-time during your studies and full-time during vacation periods.',
        ),
      ],
      entryProcedures: [
        EntryProcedures(
          title: 'Arrival in the UK',
          description:
              'Upon arrival in the UK, you will need to present your valid passport, visa, and Confirmation of Acceptance for Studies (CAS) document issued by Imperial College London to the immigration officer at the port of entry. They may ask questions about your purpose of visit and your study plans.',
        ),
        EntryProcedures(
          title: 'Biometric Residence Permit (BRP)',
          description:
              'Within 10 days of your arrival, you must collect your Biometric Residence Permit (BRP) from a designated collection point. The BRP serves as your official immigration document and includes your visa details, length of stay, and any work or study restrictions.',
        ),
      ],
    ),
  ),
  University(
    id: '5',
    name: 'École Normale Supérieure',
    country: 'Pháp',
    city: 'Paris',
    programs: ['Mathematics', 'Physics', 'Literature', 'Computer Science'],
    website: 'https://www.ens.psl.eu/',
    tuitionFee: 22000,
    livingCost: 12000,
    description:
        'École Normale Supérieure is one of the most prestigious institutions in France.',
    rating: 4.7,
    ranking: 2,
    visa: UniversityVisaData(
      universityName: 'Imperial College London',
      countryName: 'Anh',
      visaInformation: [
        VisaInformation(
          title: 'Student Visa',
          description:
              'International students need to apply for a Tier 4 (General) student visa to study at Imperial College London. The visa process may involve submitting required documents, attending a visa interview, and providing proof of financial support.',
        ),
        VisaInformation(
          title: 'Visa Validity',
          description:
              'The Tier 4 student visa allows you to stay in the UK for the duration of your academic program. You may also be eligible to work part-time during your studies and full-time during vacation periods.',
        ),
      ],
      entryProcedures: [
        EntryProcedures(
          title: 'Arrival in the UK',
          description:
              'Upon arrival in the UK, you will need to present your valid passport, visa, and Confirmation of Acceptance for Studies (CAS) document issued by Imperial College London to the immigration officer at the port of entry. They may ask questions about your purpose of visit and your study plans.',
        ),
        EntryProcedures(
          title: 'Biometric Residence Permit (BRP)',
          description:
              'Within 10 days of your arrival, you must collect your Biometric Residence Permit (BRP) from a designated collection point. The BRP serves as your official immigration document and includes your visa details, length of stay, and any work or study restrictions.',
        ),
      ],
    ),
  ),
  University(
    id: '6',
    name: 'Paris-Saclay University',
    country: 'Pháp',
    city: 'Paris',
    programs: ['Engineering', 'Sciences', 'Business', 'Computer Science'],
    website: 'https://www.universite-paris-saclay.fr/',
    tuitionFee: 23000,
    livingCost: 11000,
    description:
        'Paris-Saclay University is a leading institution in the fields of science, engineering, and technology.',
    rating: 4.6,
    ranking: 3,
    visa: UniversityVisaData(
      universityName: 'Imperial College London',
      countryName: 'Anh',
      visaInformation: [
        VisaInformation(
          title: 'Student Visa',
          description:
              'International students need to apply for a Tier 4 (General) student visa to study at Imperial College London. The visa process may involve submitting required documents, attending a visa interview, and providing proof of financial support.',
        ),
        VisaInformation(
          title: 'Visa Validity',
          description:
              'The Tier 4 student visa allows you to stay in the UK for the duration of your academic program. You may also be eligible to work part-time during your studies and full-time during vacation periods.',
        ),
      ],
      entryProcedures: [
        EntryProcedures(
          title: 'Arrival in the UK',
          description:
              'Upon arrival in the UK, you will need to present your valid passport, visa, and Confirmation of Acceptance for Studies (CAS) document issued by Imperial College London to the immigration officer at the port of entry. They may ask questions about your purpose of visit and your study plans.',
        ),
        EntryProcedures(
          title: 'Biometric Residence Permit (BRP)',
          description:
              'Within 10 days of your arrival, you must collect your Biometric Residence Permit (BRP) from a designated collection point. The BRP serves as your official immigration document and includes your visa details, length of stay, and any work or study restrictions.',
        ),
      ],
    ),
  ),
  // ... (các đối tượng University khác)
];
List<University> universities2 = [
  University(
    id: '7',
    name: 'Harvard University',
    country: 'Mỹ',
    city: 'Boston',
    programs: ['Law', 'Business', 'Medicine', 'Computer Science'],
    website: 'https://www.harvard.edu/',
    tuitionFee: 45000,
    livingCost: 15000,
    description:
        'Harvard University is one of the most prestigious universities in the world.',
    rating: 4.8,
    ranking: 1,
    visa: UniversityVisaData(
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
  ),
  University(
    id: '8',
    name: 'Stanford University',
    country: 'Mỹ',
    city: 'Stanford',
    programs: [
      'Engineering',
      'Humanities',
      'Social Sciences',
      'Natural Sciences'
    ],
    website: 'https://www.stanford.edu/',
    tuitionFee: 48000,
    livingCost: 16000,
    description:
        'Stanford University is renowned for its cutting-edge research and innovation.',
    rating: 4.7,
    ranking: 2,
    visa: UniversityVisaData(
      universityName: 'Stanford University',
      countryName: 'Mỹ',
      visaInformation: [
        VisaInformation(
          title: 'Student Visa',
          description:
              'You need to apply for a student visa (F-1 visa) to study at Stanford University. The visa process may involve submitting required documents, attending an interview at the U.S. embassy or consulate, and paying the visa application fee.',
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
              'Upon arrival at a U.S. port of entry, you will need to present your valid passport, F-1 visa, I-20 form issued by Stanford University, and any other required documents. The U.S. Customs and Border Protection (CBP) officer will review your documents and may ask questions about your purpose of travel.',
        ),
        EntryProcedures(
          title: 'SEVIS Registration',
          description:
              'Once you have arrived in the U.S., you must complete the Student and Exchange Visitor Information System (SEVIS) registration process. This involves providing your local U.S. address, updating your contact information, and confirming your enrollment at Stanford University.',
        ),
      ],
    ),
  ),
  University(
    id: '9',
    name: 'Massachusetts Institute of Technology (MIT)',
    country: 'Mỹ',
    city: 'Cambridge',
    programs: ['Engineering', 'Computer Science', 'Physics', 'Business'],
    website: 'https://www.mit.edu/',
    tuitionFee: 47000,
    livingCost: 14000,
    description:
        'Massachusetts Institute of Technology (MIT) is a world-class institution known for its STEM programs.',
    rating: 4.6,
    ranking: 3,
    visa: UniversityVisaData(
      universityName: 'Massachusetts Institute of Technology (MIT)',
      countryName: 'Mỹ',
      visaInformation: [
        VisaInformation(
          title: 'Student Visa',
          description:
              'You need to apply for a student visa (F-1 visa) to study at Massachusetts Institute of Technology (MIT). The visa process may involve submitting required documents, attending an interview at the U.S. embassy or consulate, and paying the visa application fee.',
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
              'Upon arrival at a U.S. port of entry, you will need to present your valid passport, F-1 visa, I-20 form issued by Massachusetts Institute of Technology (MIT), and any other required documents. The U.S. Customs and Border Protection (CBP) officer will review your documents and may ask questions about your purpose of travel.',
        ),
        EntryProcedures(
          title: 'SEVIS Registration',
          description:
              'Once you have arrived in the U.S., you must complete the Student and Exchange Visitor Information System (SEVIS) registration process. This involves providing your local U.S. address, updating your contact information, and confirming your enrollment at Massachusetts Institute of Technology (MIT).',
        ),
      ],
    ),
  ),
  // ... (các đối tượng University khác)
];
List<University> universities3 = [
  University(
    id: '10',
    name: 'Technical University of Munich',
    country: 'Đức',
    city: 'Munich',
    programs: ['Engineering', 'Computer Science', 'Natural Sciences'],
    website: 'https://www.tum.de/',
    tuitionFee: 35000,
    livingCost: 12000,
    description:
        'Technical University of Munich is one of Germany\'s leading universities in engineering and technology.',
    rating: 4.5,
    ranking: 1,
    visa: UniversityVisaData(
      universityName: 'Imperial College London',
      countryName: 'Anh',
      visaInformation: [
        VisaInformation(
          title: 'Student Visa',
          description:
              'International students need to apply for a Tier 4 (General) student visa to study at Imperial College London. The visa process may involve submitting required documents, attending a visa interview, and providing proof of financial support.',
        ),
        VisaInformation(
          title: 'Visa Validity',
          description:
              'The Tier 4 student visa allows you to stay in the UK for the duration of your academic program. You may also be eligible to work part-time during your studies and full-time during vacation periods.',
        ),
      ],
      entryProcedures: [
        EntryProcedures(
          title: 'Arrival in the UK',
          description:
              'Upon arrival in the UK, you will need to present your valid passport, visa, and Confirmation of Acceptance for Studies (CAS) document issued by Imperial College London to the immigration officer at the port of entry. They may ask questions about your purpose of visit and your study plans.',
        ),
        EntryProcedures(
          title: 'Biometric Residence Permit (BRP)',
          description:
              'Within 10 days of your arrival, you must collect your Biometric Residence Permit (BRP) from a designated collection point. The BRP serves as your official immigration document and includes your visa details, length of stay, and any work or study restrictions.',
        ),
      ],
    ),
  ),
  University(
    id: '11',
    name: 'Ludwig Maximilian University of Munich',
    country: 'Đức',
    city: 'Munich',
    programs: ['Medicine', 'Law', 'Humanities', 'Social Sciences'],
    website: 'https://www.en.uni-muenchen.de/',
    tuitionFee: 30000,
    livingCost: 11000,
    description:
        'Ludwig Maximilian University of Munich is one of Germany\'s oldest and most prestigious universities.',
    rating: 4.4,
    ranking: 2,
    visa: UniversityVisaData(
      universityName: 'Imperial College London',
      countryName: 'Anh',
      visaInformation: [
        VisaInformation(
          title: 'Student Visa',
          description:
              'International students need to apply for a Tier 4 (General) student visa to study at Imperial College London. The visa process may involve submitting required documents, attending a visa interview, and providing proof of financial support.',
        ),
        VisaInformation(
          title: 'Visa Validity',
          description:
              'The Tier 4 student visa allows you to stay in the UK for the duration of your academic program. You may also be eligible to work part-time during your studies and full-time during vacation periods.',
        ),
      ],
      entryProcedures: [
        EntryProcedures(
          title: 'Arrival in the UK',
          description:
              'Upon arrival in the UK, you will need to present your valid passport, visa, and Confirmation of Acceptance for Studies (CAS) document issued by Imperial College London to the immigration officer at the port of entry. They may ask questions about your purpose of visit and your study plans.',
        ),
        EntryProcedures(
          title: 'Biometric Residence Permit (BRP)',
          description:
              'Within 10 days of your arrival, you must collect your Biometric Residence Permit (BRP) from a designated collection point. The BRP serves as your official immigration document and includes your visa details, length of stay, and any work or study restrictions.',
        ),
      ],
    ),
  ),
  University(
    id: '12',
    name: 'Heidelberg University',
    country: 'Đức',
    city: 'Heidelberg',
    programs: ['Medicine', 'Natural Sciences', 'Humanities', 'Social Sciences'],
    website: 'https://www.uni-heidelberg.de/',
    tuitionFee: 32000,
    livingCost: 10000,
    description:
        'Heidelberg University is known for its excellence in research and offers a wide range of academic disciplines.',
    rating: 4.3,
    ranking: 3,
    visa: UniversityVisaData(
      universityName: 'Imperial College London',
      countryName: 'Anh',
      visaInformation: [
        VisaInformation(
          title: 'Student Visa',
          description:
              'International students need to apply for a Tier 4 (General) student visa to study at Imperial College London. The visa process may involve submitting required documents, attending a visa interview, and providing proof of financial support.',
        ),
        VisaInformation(
          title: 'Visa Validity',
          description:
              'The Tier 4 student visa allows you to stay in the UK for the duration of your academic program. You may also be eligible to work part-time during your studies and full-time during vacation periods.',
        ),
      ],
      entryProcedures: [
        EntryProcedures(
          title: 'Arrival in the UK',
          description:
              'Upon arrival in the UK, you will need to present your valid passport, visa, and Confirmation of Acceptance for Studies (CAS) document issued by Imperial College London to the immigration officer at the port of entry. They may ask questions about your purpose of visit and your study plans.',
        ),
        EntryProcedures(
          title: 'Biometric Residence Permit (BRP)',
          description:
              'Within 10 days of your arrival, you must collect your Biometric Residence Permit (BRP) from a designated collection point. The BRP serves as your official immigration document and includes your visa details, length of stay, and any work or study restrictions.',
        ),
      ],
    ),
  ),
  // ... (các đối tượng University khác)
];
