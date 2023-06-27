import 'package:flutter/material.dart';
import 'package:study_abroad_consultant/router/coordinator.dart';

class StudyAbroadUniversityDetailPage extends StatelessWidget {
  const StudyAbroadUniversityDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final university = studyAbroadUniversities.first;
    return Scaffold(
      appBar: AppBar(
        title: const Text('University Detail'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                university.name,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              Text(
                'Location: ${university.city}, ${university.country}',
                style: TextStyle(fontSize: 18, color: Colors.grey[600]),
              ),
              const SizedBox(height: 8),
              Text(
                'Programs: ${university.programs.join(", ")}',
                style: TextStyle(fontSize: 18, color: Colors.grey[600]),
              ),
              const SizedBox(height: 8),
              Text(
                'Website: ${university.website}',
                style: TextStyle(fontSize: 18, color: Colors.grey[600]),
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Tuition Fee',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          '\$${university.tuitionFee.toStringAsFixed(2)}',
                          style:
                              const TextStyle(fontSize: 18, color: Colors.blue),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Living Cost',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          '\$${university.livingCost.toStringAsFixed(2)}',
                          style:
                              const TextStyle(fontSize: 18, color: Colors.blue),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              const SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Rank',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          '${university.ranking}',
                          style:
                              const TextStyle(fontSize: 18, color: Colors.blue),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Rating',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          '${university.rating}',
                          style:
                              const TextStyle(fontSize: 18, color: Colors.blue),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              const Text(
                'Description',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Text(
                university.description,
                style: TextStyle(fontSize: 18, color: Colors.grey[600]),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Add your logic here
                      XCoordinator.showForm();
                    },
                    child: const Text('Apply Now'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      XCoordinator.showVisa();
                      // Add your logic here
                    },
                    child: const Text('Thủ tục nhập cảnh'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class StudyAbroadUniversityDetail {
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

  StudyAbroadUniversityDetail({
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
  });
}

List<StudyAbroadUniversityDetail> studyAbroadUniversities = [
  StudyAbroadUniversityDetail(
    name: 'Harvard University',
    country: 'Mỹ',
    city: 'Cambridge',
    programs: ['Business Administration', 'Computer Science', 'Law'],
    website: 'https://www.harvard.edu/',
    tuitionFee: 50000,
    livingCost: 20000,
    description:
        'Harvard University is a prestigious Ivy League institution known for its excellent programs in business, computer science, and law.',
    rating: 4.8,
    ranking: 1,
  ),
  StudyAbroadUniversityDetail(
    name: 'Stanford University',
    country: 'Mỹ',
    city: 'Stanford',
    programs: ['Engineering', 'Medicine', 'Humanities'],
    website: 'https://www.stanford.edu/',
    tuitionFee: 55000,
    livingCost: 18000,
    description:
        'Stanford University is renowned for its strong programs in engineering, medicine, and humanities, offering students a diverse and enriching educational experience.',
    rating: 4.7,
    ranking: 2,
  ),
  StudyAbroadUniversityDetail(
    name: 'University of Oxford',
    country: 'Anh',
    city: 'Oxford',
    programs: ['Physics', 'Economics', 'History'],
    website: 'https://www.ox.ac.uk/',
    tuitionFee: 30000,
    livingCost: 15000,
    description:
        'The University of Oxford is one of the oldest and most prestigious universities in the world, offering a wide range of programs in physics, economics, and history.',
    rating: 4.9,
    ranking: 3,
  ),
  // Thêm các trường đại học khác ở đây
];
