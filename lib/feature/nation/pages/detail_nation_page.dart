import 'package:flutter/material.dart';
import 'package:study_abroad_consultant/router/coordinator.dart';

class DetailNationPage extends StatelessWidget {
  const DetailNationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chi tiết quốc gia'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Quốc gia: Mỹ',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 24),
            const Text(
              'Thủ đô:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Washington, D.C.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 16),
            const Text(
              'Ngôn ngữ chính thức:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Tiếng Anh',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 16),
            const Text(
              'Hệ thống giáo dục:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Đại học, Cao đẳng, Trung học phổ thông',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 24),
            const Text(
              'Các thành phố nổi tiếng:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                _buildCityCard('New York City'),
                const SizedBox(width: 8),
                _buildCityCard('Los Angeles'),
                const SizedBox(width: 8),
                _buildCityCard('San Francisco'),
              ],
            ),
            const SizedBox(height: 24),
            const Text(
              'Các trường đại học hàng đầu:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            _buildUniversityCard('Harvard University'),
            const SizedBox(height: 8),
            _buildUniversityCard('Stanford University'),
            const SizedBox(height: 8),
            _buildUniversityCard('Massachusetts Institute of Technology (MIT)'),
          ],
        ),
      ),
    );
  }

  Widget _buildCityCard(String cityName) {
    return Expanded(
      child: GestureDetector(
        onTap: () => XCoordinator.showCity(),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.blue,
          ),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Center(
              child: Text(
                cityName,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildUniversityCard(String universityName) {
    return GestureDetector(
      onTap: () => XCoordinator.showSchool(),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.green,
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Center(
            child: Text(
              universityName,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
