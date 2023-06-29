// ignore_for_file: library_private_types_in_public_api, use_key_in_widget_constructors, prefer_final_fields

import 'package:flutter/material.dart';

class StudyAbroadRequestListScreen extends StatefulWidget {
  @override
  _StudyAbroadRequestListScreenState createState() =>
      _StudyAbroadRequestListScreenState();
}

class _StudyAbroadRequestListScreenState
    extends State<StudyAbroadRequestListScreen> {
  List<StudyAbroadRequest> _requests = [
    StudyAbroadRequest(
      fullName: 'Nguyễn Văn A',
      email: 'nguyenvana@gmail.com',
      phoneNumber: '0123456789',
      address: 'Hà Nội',
      country: 'Mỹ',
      university: 'Harvard University',
      major: 'Computer Science',
      studyGoal: 'Nâng cao kiến thức về công nghệ thông tin',
      previousExperience: 'Tham gia cuộc thi lập trình quốc tế',
      otherComments: 'Đang mong chờ tư vấn',
    ),
    StudyAbroadRequest(
      fullName: 'Nguyễn Thị B',
      email: 'nguyenthib@gmail.com',
      phoneNumber: '0987654321',
      address: 'Hồ Chí Minh',
      country: 'Anh',
      university: 'University of Cambridge',
      major: 'Business Administration',
      studyGoal: 'Phát triển kỹ năng quản lý',
      previousExperience: 'Thực tập tại một công ty nước ngoài',
      otherComments: 'Mong muốn nhận thông tin về học bổng',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Danh sách yêu cầu'),
      ),
      body: ListView.builder(
        itemCount: _requests.length,
        itemBuilder: (context, index) {
          final request = _requests[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => StudyAbroadRequestDetailScreen(request),
                ),
              );
            },
            child: Card(
              margin:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              elevation: 4.0,
              child: ListTile(
                title: Text(request.fullName),
                subtitle: Text(request.email),
                trailing: const Icon(Icons.chevron_right),
              ),
            ),
          );
        },
      ),
    );
  }
}

class StudyAbroadRequest {
  final String fullName;
  final String email;
  final String phoneNumber;
  final String address;
  final String country;
  final String university;
  final String major;
  final String studyGoal;
  final String previousExperience;
  final String otherComments;

  StudyAbroadRequest({
    required this.fullName,
    required this.email,
    required this.phoneNumber,
    required this.address,
    required this.country,
    required this.university,
    required this.major,
    required this.studyGoal,
    required this.previousExperience,
    required this.otherComments,
  });
}

class StudyAbroadRequestDetailScreen extends StatelessWidget {
  final StudyAbroadRequest request;

  const StudyAbroadRequestDetailScreen(this.request);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chi tiết yêu cầu'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Họ và tên:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
                color: Colors.blue,
              ),
            ),
            Text(
              request.fullName,
              style: const TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Email:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
                color: Colors.blue,
              ),
            ),
            Text(
              request.email,
              style: const TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Số điện thoại:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
                color: Colors.blue,
              ),
            ),
            Text(
              request.phoneNumber,
              style: const TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Địa chỉ:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
                color: Colors.blue,
              ),
            ),
            Text(
              request.address,
              style: const TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Quốc gia:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
                color: Colors.blue,
              ),
            ),
            Text(
              request.country,
              style: const TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Trường/Đại học:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
                color: Colors.blue,
              ),
            ),
            Text(
              request.university,
              style: const TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Ngành học:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
                color: Colors.blue,
              ),
            ),
            Text(
              request.major,
              style: const TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Mục tiêu du học:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
                color: Colors.blue,
              ),
            ),
            Text(
              request.studyGoal,
              style: const TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Kinh nghiệm du học trước đây:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
                color: Colors.blue,
              ),
            ),
            Text(
              request.previousExperience,
              style: const TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Ý kiến khác:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
                color: Colors.blue,
              ),
            ),
            Text(
              request.otherComments,
              style: const TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      ),
    );
  }
}
