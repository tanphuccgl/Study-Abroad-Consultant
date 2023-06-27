import 'package:flutter/material.dart';
import 'package:study_abroad_consultant/router/coordinator.dart';

class StudyAbroadEventsPage extends StatelessWidget {
  const StudyAbroadEventsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Study Abroad Events'),
      ),
      body: ListView.builder(
        itemCount: studyAbroadEvents.length,
        itemBuilder: (context, index) {
          return GestureDetector(
              onTap: () => XCoordinator.showEventDetail(),
              child: StudyAbroadEventCard(event: studyAbroadEvents[index]));
        },
      ),
    );
  }
}

class StudyAbroadEventCard extends StatelessWidget {
  final StudyAbroadEvent event;

  const StudyAbroadEventCard({super.key, required this.event});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            event.imageUrl,
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  event.title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  event.description,
                  style: const TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    const Icon(Icons.calendar_today),
                    const SizedBox(width: 4),
                    Text(
                      event.date.toString(),
                      style: const TextStyle(fontSize: 14),
                    ),
                    const SizedBox(width: 16),
                    const Icon(Icons.location_on),
                    const SizedBox(width: 4),
                    Text(
                      event.location,
                      style: const TextStyle(fontSize: 14),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class StudyAbroadEvent {
  final String title;
  final String description;
  final DateTime date;
  final String location;
  final String imageUrl;

  StudyAbroadEvent({
    required this.title,
    required this.description,
    required this.date,
    required this.location,
    required this.imageUrl,
  });
}

List<StudyAbroadEvent> studyAbroadEvents = [
  StudyAbroadEvent(
    title: 'Hội thảo Du học Mỹ',
    description:
        'Hội thảo Du học Mỹ nhằm cung cấp thông tin về quy trình và cơ hội du học tại các trường đại học Mỹ.',
    date: DateTime(2023, 9, 15, 9, 0),
    location: 'TP.HCM',
    imageUrl: 'https://example.com/event1.jpg',
  ),
  StudyAbroadEvent(
    title: 'Ngày tư vấn Du học Anh',
    description:
        'Ngày tư vấn Du học Anh sẽ giới thiệu các chương trình du học, thủ tục nhập học và học bổng tại các trường đại học Anh.',
    date: DateTime(2023, 10, 5, 13, 30),
    location: 'Hà Nội',
    imageUrl: 'https://example.com/event2.jpg',
  ),
  StudyAbroadEvent(
    title: 'Hội thảo Du học Úc',
    description:
        'Hội thảo Du học Úc sẽ giới thiệu về hệ thống giáo dục, cơ hội học bổng và quy trình xin visa du học tại Úc.',
    date: DateTime(2023, 11, 20, 10, 0),
    location: 'Đà Nẵng',
    imageUrl: 'https://example.com/event3.jpg',
  ),
  // Thêm các sự kiện khác ở đây
];
