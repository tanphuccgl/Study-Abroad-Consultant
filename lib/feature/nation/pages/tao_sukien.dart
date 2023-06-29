// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:study_abroad_consultant/feature/nation/pages/event_page.dart';

class CreateEventScreen extends StatefulWidget {
  const CreateEventScreen({super.key});

  @override
  _CreateEventScreenState createState() => _CreateEventScreenState();
}

class _CreateEventScreenState extends State<CreateEventScreen> {
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  TextEditingController imageUrlController = TextEditingController();

  DateTime? selectedDate;

  void _showDatePicker() async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2022),
      lastDate: DateTime(2023),
    );

    if (pickedDate != null && pickedDate != selectedDate) {
      setState(() {
        selectedDate = pickedDate;
        dateController.text = pickedDate.toString().split(' ')[0];
      });
    }
  }

  void _createEvent() {
    StudyAbroadEvent newEvent = StudyAbroadEvent(
      title: titleController.text,
      description: descriptionController.text,
      date: selectedDate ?? DateTime.now(),
      location: locationController.text,
      imageUrl: imageUrlController.text,
    );

    Navigator.pop(context,
        newEvent); // Trở về màn hình trước và chuyển dữ liệu sự kiện mới
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tạo sự kiện'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: titleController,
              decoration: const InputDecoration(
                labelText: 'Tiêu đề',
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: descriptionController,
              maxLines: 5,
              decoration: const InputDecoration(
                labelText: 'Mô tả',
              ),
            ),
            const SizedBox(height: 16),
            GestureDetector(
              onTap: _showDatePicker,
              child: AbsorbPointer(
                child: TextField(
                  controller: dateController,
                  decoration: const InputDecoration(
                    labelText: 'Ngày diễn ra',
                    suffixIcon: Icon(Icons.calendar_today),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: locationController,
              decoration: const InputDecoration(
                labelText: 'Địa điểm',
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: imageUrlController,
              decoration: const InputDecoration(
                labelText: 'URL hình ảnh',
              ),
            ),
            const SizedBox(height: 32),
            ElevatedButton(
              onPressed: _createEvent,
              child: const Text('Tạo sự kiện'),
            ),
          ],
        ),
      ),
    );
  }
}
