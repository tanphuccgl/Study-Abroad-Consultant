import 'package:flutter/material.dart';

class EventRegistrationScreen extends StatelessWidget {
  const EventRegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Đăng ký tham gia sự kiện'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const TextField(
                decoration: InputDecoration(labelText: 'Họ và tên'),
              ),
              const SizedBox(height: 16.0),
              const TextField(
                decoration: InputDecoration(labelText: 'Email'),
              ),
              const SizedBox(height: 16.0),
              const TextField(
                decoration: InputDecoration(labelText: 'Số điện thoại'),
              ),
              const SizedBox(height: 16.0),
              const TextField(
                decoration: InputDecoration(labelText: 'Địa chỉ'),
              ),
              const SizedBox(height: 16.0),
              const TextField(
                decoration: InputDecoration(labelText: 'Quốc gia'),
              ),
              const SizedBox(height: 16.0),
              const TextField(
                decoration: InputDecoration(labelText: 'Trường/Đại học'),
              ),
              const SizedBox(height: 16.0),
              const TextField(
                decoration: InputDecoration(labelText: 'Ngành học'),
              ),
              const SizedBox(height: 16.0),
              const TextField(
                decoration: InputDecoration(labelText: 'Mục tiêu du học'),
              ),
              const SizedBox(height: 16.0),
              const TextField(
                decoration:
                    InputDecoration(labelText: 'Kinh nghiệm du học trước đây'),
              ),
              const SizedBox(height: 16.0),
              const TextField(
                decoration: InputDecoration(labelText: 'Ý kiến khác'),
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  // Xử lý khi người dùng nhấn nút Đăng ký
                },
                child: const Text('Đăng ký'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
