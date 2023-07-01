import 'package:flutter/material.dart';
import 'package:study_abroad_consultant/network/model/city.dart';
import 'package:study_abroad_consultant/network/model/nation.dart';
import 'package:study_abroad_consultant/network/model/university.dart';
import 'package:study_abroad_consultant/router/coordinator.dart';

class DetailNationPage extends StatelessWidget {
  final Nation nation;
  const DetailNationPage({super.key, required this.nation});

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
            Text(
              'Quốc gia: ${nation.name}',
              style: const TextStyle(
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
            Text(
              nation.capital,
              style: const TextStyle(fontSize: 16),
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
            Text(
              nation.officialLanguage,
              style: const TextStyle(fontSize: 16),
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
            Text(
              nation.educationSystem,
              style: const TextStyle(fontSize: 16),
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
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children:
                    nation.famousCities.map((e) => _buildCityCard(e)).toList()),
            const SizedBox(height: 24),
            const Text(
              'Các trường đại học hàng đầu:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 24),
            ...nation.topUniversities
                .map((e) => _buildUniversityCard(e))
                .toList()
          ],
        ),
      ),
    );
  }

  Widget _buildCityCard(City city) {
    return GestureDetector(
      onTap: () => XCoordinator.showCity(city),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.blue,
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Center(
            child: Text(
              city.cityName,
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

  Widget _buildUniversityCard(University e) {
    return Column(
      children: [
        GestureDetector(
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
                  e.name,
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
        const SizedBox(height: 8),
      ],
    );
  }
}
