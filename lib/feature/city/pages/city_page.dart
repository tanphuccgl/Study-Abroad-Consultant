import 'package:flutter/material.dart';
import 'package:study_abroad_consultant/network/model/city.dart';

class CityPage extends StatelessWidget {
  final City city;
  const CityPage({super.key, required this.city});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chi tiết thành phố'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                city.cityName,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'Quốc gia: ${city.countryName}',
                style: const TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 8),
              Text(
                'Ngôn ngữ chính thức: ${city.language}',
                style: const TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 8),
              Text(
                'Thủ đô: ${city.capital}',
                style: const TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 8),
              const Text(
                'Đại học hàng đầu:',
                style: TextStyle(fontSize: 18),
              ),
              Column(
                children: city.universities.map((university) {
                  return ListTile(
                    leading: const Icon(Icons.school),
                    title: Text(university),
                  );
                }).toList(),
              ),
              const SizedBox(height: 16),
              const Text(
                'Điểm tham quan nổi tiếng:',
                style: TextStyle(fontSize: 18),
              ),
              Column(
                children: city.popularAttractions.map((attraction) {
                  return ListTile(
                    leading: const Icon(Icons.location_on),
                    title: Text(attraction),
                  );
                }).toList(),
              ),
              const SizedBox(height: 16),
              const Text(
                'Ẩm thực phổ biến:',
                style: TextStyle(fontSize: 18),
              ),
              Column(
                children: city.popularCuisines.map((cuisine) {
                  return ListTile(
                    leading: const Icon(Icons.restaurant),
                    title: Text(cuisine),
                  );
                }).toList(),
              ),
              const SizedBox(height: 16),
              Text(
                'Đơn vị tiền tệ: ${city.currency}',
                style: const TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 8),
              Text(
                'Múi giờ: ${city.timeZone}',
                style: const TextStyle(fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
