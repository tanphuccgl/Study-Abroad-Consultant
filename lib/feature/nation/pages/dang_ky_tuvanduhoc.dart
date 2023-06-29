// ignore_for_file: library_private_types_in_public_api, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class StudyAbroadConsultationScreen extends StatefulWidget {
  @override
  _StudyAbroadConsultationScreenState createState() =>
      _StudyAbroadConsultationScreenState();
}

class _StudyAbroadConsultationScreenState
    extends State<StudyAbroadConsultationScreen> {
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tư vấn du học'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Thông tin cá nhân',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16.0),
            TextFormField(
              controller: _fullNameController,
              decoration: const InputDecoration(
                labelText: 'Họ và tên',
              ),
            ),
            const SizedBox(height: 16.0),
            TextFormField(
              controller: _emailController,
              decoration: const InputDecoration(
                labelText: 'Email',
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 16.0),
            TextFormField(
              controller: _phoneNumberController,
              decoration: const InputDecoration(
                labelText: 'Số điện thoại',
              ),
              keyboardType: TextInputType.phone,
            ),
            const SizedBox(height: 32.0),
            const Text(
              'Nội dung tư vấn',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16.0),
            TextFormField(
              controller: _messageController,
              decoration: const InputDecoration(
                labelText: 'Tin nhắn',
              ),
              maxLines: 5,
            ),
            const SizedBox(height: 32.0),
            ElevatedButton(
              onPressed: () {
                // Xử lý logic khi người dùng nhấn nút Gửi
                // Lưu thông tin và thực hiện các thao tác khác tùy ý
                // ở đây có thể gửi yêu cầu tư vấn du học
              },
              child: const Text('Gửi'),
            ),
          ],
        ),
      ),
    );
  }
}
