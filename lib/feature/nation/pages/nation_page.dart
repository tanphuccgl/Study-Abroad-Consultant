import 'package:flutter/material.dart';
import 'package:study_abroad_consultant/router/coordinator.dart';

class NationPage extends StatelessWidget {
  final List<String> countries = [
    'Mỹ',
    'Anh',
    'Pháp',
    'Đức',
    'Tây Ban Nha',
    'Ý',
    'Nhật Bản',
    'Trung Quốc',
    'Hàn Quốc',
    'Úc',
  ];

  NationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Danh sách quốc gia'),
      ),
      body: ListView.builder(
        itemCount: countries.length,
        itemBuilder: (BuildContext context, int index) {
          return _buildCountryCard(countries[index]);
        },
      ),
    );
  }

  Widget _buildCountryCard(String countryName) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: ListTile(
        title: Text(
          countryName,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        trailing: const Icon(Icons.arrow_forward_ios),
        onTap: () {
          // Xử lý sự kiện khi người dùng nhấn vào quốc gia
          // Ví dụ: Chuyển đến trang chi tiết quốc gia
          XCoordinator.showDetailNation();
        },
      ),
    );
  }
}
