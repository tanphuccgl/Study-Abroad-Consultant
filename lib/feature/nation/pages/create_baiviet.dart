// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:study_abroad_consultant/feature/nation/pages/study_abroad_articles_page.dart';

class CreateArticleScreen extends StatefulWidget {
  const CreateArticleScreen({super.key});

  @override
  _CreateArticleScreenState createState() => _CreateArticleScreenState();
}

class _CreateArticleScreenState extends State<CreateArticleScreen> {
  TextEditingController titleController = TextEditingController();
  TextEditingController authorController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController contentController = TextEditingController();
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

  void _createArticle() {
    StudyAbroadArticle newArticle = StudyAbroadArticle(
      title: titleController.text,
      author: authorController.text,
      date: dateController.text,
      content: contentController.text,
      imageUrl: imageUrlController.text,
    );

    Navigator.pop(context,
        newArticle); // Trở về màn hình trước và chuyển dữ liệu bài viết mới
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tạo bài viết'),
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
              controller: authorController,
              decoration: const InputDecoration(
                labelText: 'Tác giả',
              ),
            ),
            const SizedBox(height: 16),
            GestureDetector(
              onTap: _showDatePicker,
              child: AbsorbPointer(
                child: TextField(
                  controller: dateController,
                  decoration: const InputDecoration(
                    labelText: 'Ngày đăng',
                    suffixIcon: Icon(Icons.calendar_today),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: contentController,
              maxLines: 5,
              decoration: const InputDecoration(
                labelText: 'Nội dung',
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
              onPressed: _createArticle,
              child: const Text('Đăng bài viết'),
            ),
          ],
        ),
      ),
    );
  }
}
