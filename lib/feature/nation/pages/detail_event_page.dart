import 'package:flutter/material.dart';
import 'package:study_abroad_consultant/feature/nation/pages/event_page.dart';

class EventDetailPage extends StatelessWidget {
  const EventDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final event = StudyAbroadEvent(
      title: 'Hội thảo Du học Mỹ',
      description:
          'Hội thảo Du học Mỹ nhằm cung cấp thông tin về quy trình và cơ hội du học tại các trường đại học Mỹ.',
      date: DateTime(2023, 9, 15, 9, 0),
      location: 'TP.HCM',
      imageUrl: 'https://example.com/event1.jpg',
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text('Event Details'),
      ),
      body: SingleChildScrollView(
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
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    event.description,
                    style: const TextStyle(fontSize: 18),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      const Icon(Icons.calendar_today),
                      const SizedBox(width: 4),
                      Text(
                        event.date.toString(),
                        style: const TextStyle(fontSize: 16),
                      ),
                      const SizedBox(width: 16),
                      const Icon(Icons.location_on),
                      const SizedBox(width: 4),
                      Text(
                        event.location,
                        style: const TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          // Thực hiện chức năng khi bấm nút đăng ký
                          // Ví dụ: Hiển thị form đăng ký
                        },
                        child: const Text('Register'),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          // Thực hiện chức năng khi bấm nút chia sẻ
                          // Ví dụ: Chia sẻ thông tin sự kiện
                        },
                        child: const Text('Share'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
