// ignore_for_file: library_private_types_in_public_api, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class StudyAbroadConsultationForm extends StatefulWidget {
  @override
  _StudyAbroadConsultationFormState createState() =>
      _StudyAbroadConsultationFormState();
}

class _StudyAbroadConsultationFormState
    extends State<StudyAbroadConsultationForm> {
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _countryController = TextEditingController();
  final TextEditingController _universityController = TextEditingController();
  final TextEditingController _majorController = TextEditingController();
  final TextEditingController _studyGoalController = TextEditingController();
  final TextEditingController _previousExperienceController =
      TextEditingController();
  final TextEditingController _otherCommentsController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Yêu cầu tư vấn du học'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
              const SizedBox(height: 16.0),
              TextFormField(
                controller: _addressController,
                decoration: const InputDecoration(
                  labelText: 'Địa chỉ',
                ),
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                controller: _countryController,
                decoration: const InputDecoration(
                  labelText: 'Quốc gia',
                ),
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                controller: _universityController,
                decoration: const InputDecoration(
                  labelText: 'Trường/Đại học',
                ),
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                controller: _majorController,
                decoration: const InputDecoration(
                  labelText: 'Ngành học',
                ),
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                controller: _studyGoalController,
                decoration: const InputDecoration(
                  labelText: 'Mục tiêu du học',
                ),
                maxLines: 3,
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                controller: _previousExperienceController,
                decoration: const InputDecoration(
                  labelText: 'Kinh nghiệm du học trước đây',
                ),
                maxLines: 3,
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                controller: _otherCommentsController,
                decoration: const InputDecoration(
                  labelText: 'Ý kiến khác',
                ),
                maxLines: 3,
              ),
              const SizedBox(height: 24.0),
              ElevatedButton(
                onPressed: () {
                  // Xử lý logic khi người dùng nhấn nút Gửi
                  // Lưu thông tin và thực hiện các thao tác khác tùy ý
                  // ở đây có thể gửi yêu cầu tư vấn đi du học
                },
                child: const Text('Gửi'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
