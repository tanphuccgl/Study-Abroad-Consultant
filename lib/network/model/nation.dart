import 'package:study_abroad_consultant/network/model/city.dart';
import 'package:study_abroad_consultant/network/model/university.dart';

class Nation {
  final String id;
  final String name;
  final String capital;
  final String officialLanguage;
  final String educationSystem;
  final List<City> famousCities;
  final List<University> topUniversities;

  Nation({
    required this.id,
    required this.name,
    required this.capital,
    required this.officialLanguage,
    required this.educationSystem,
    required this.famousCities,
    required this.topUniversities,
  });
}

final nationEmpty = Nation(
  id: '1',
  name: 'Mỹ',
  capital: 'Washington, D.C.',
  officialLanguage: 'Tiếng Anh',
  educationSystem: 'Đại học, Cao đẳng, Trung học phổ thông',
  famousCities: america,
  topUniversities: universities2,
);

List<Nation> nations = [
  Nation(
    id: '1',
    name: 'Mỹ',
    capital: 'Washington, D.C.',
    officialLanguage: 'Tiếng Anh',
    educationSystem: 'Đại học, Cao đẳng, Trung học phổ thông',
    famousCities: america,
    topUniversities: universities2,
  ),
  Nation(
    id: '2',
    name: 'Anh',
    capital: 'London',
    officialLanguage: 'Tiếng Anh',
    educationSystem: 'Đại học, Cao đẳng, Trung học phổ thông',
    famousCities: england,
    topUniversities: universities,
  ),
  Nation(
      id: '3',
      name: 'Pháp',
      capital: 'Paris',
      officialLanguage: 'Tiếng Pháp',
      educationSystem: 'Đại học, Cao đẳng, Trung học phổ thông',
      famousCities: france,
      topUniversities: universities1),
  Nation(
      id: '4',
      name: 'Đức',
      capital: 'Berlin',
      officialLanguage: 'Tiếng Đức',
      educationSystem: 'Đại học, Cao đẳng, Trung học phổ thông',
      famousCities: germany,
      topUniversities: universities3),
  // Nation(
  //   id: '5',
  //   name: 'Tây Ban Nha',
  //   capital: 'Madrid',
  //   officialLanguage: 'Tiếng Tây Ban Nha',
  //   educationSystem: 'Đại học, Cao đẳng, Trung học phổ thông',
  //   famousCities: ['Madrid', 'Barcelona', 'Seville'],
  //   topUniversities: [
  //     'University of Barcelona',
  //     'Autonomous University of Madrid',
  //     'Complutense University of Madrid',
  //   ],
  // ),
  // Nation(
  //   id: '6',
  //   name: 'Ý',
  //   capital: 'Rome',
  //   officialLanguage: 'Tiếng Ý',
  //   educationSystem: 'Đại học, Cao đẳng, Trung học phổ thông',
  //   famousCities: ['Rome', 'Milan', 'Florence'],
  //   topUniversities: [
  //     'University of Bologna',
  //     'Sapienza University of Rome',
  //     'Polytechnic University of Milan',
  //   ],
  // ),
  // Nation(
  //   id: '7',
  //   name: 'Nhật Bản',
  //   capital: 'Tokyo',
  //   officialLanguage: 'Tiếng Nhật',
  //   educationSystem: 'Đại học, Cao đẳng, Trung học phổ thông',
  //   famousCities: ['Tokyo', 'Kyoto', 'Osaka'],
  //   topUniversities: [
  //     'University of Tokyo',
  //     'Kyoto University',
  //     'Osaka University',
  //   ],
  // ),
  // Nation(
  //   id: '8',
  //   name: 'Trung Quốc',
  //   capital: 'Bắc Kinh',
  //   officialLanguage: 'Tiếng Trung',
  //   educationSystem: 'Đại học, Cao đẳng, Trung học phổ thông',
  //   famousCities: ['Bắc Kinh', 'Thượng Hải', 'Cô Đô'],
  //   topUniversities: [
  //     'Tsinghua University',
  //     'Peking University',
  //     'Fudan University',
  //   ],
  // ),
  // Nation(
  //   id: '9',
  //   name: 'Hàn Quốc',
  //   capital: 'Seoul',
  //   officialLanguage: 'Tiếng Hàn',
  //   educationSystem: 'Đại học, Cao đẳng, Trung học phổ thông',
  //   famousCities: ['Seoul', 'Busan', 'Incheon'],
  //   topUniversities: [
  //     'Seoul National University',
  //     'KAIST',
  //     'Yonsei University',
  //   ],
  // ),
  // Nation(
  //   id: '10',
  //   name: 'Úc',
  //   capital: 'Canberra',
  //   officialLanguage: 'Tiếng Anh',
  //   educationSystem: 'Đại học, Cao đẳng, Trung học phổ thông',
  //   famousCities: ['Sydney', 'Melbourne', 'Brisbane'],
  //   topUniversities: [
  //     'University of Melbourne',
  //     'University of Sydney',
  //     'Australian National University',
  //   ],
  // ),
];
