import 'package:flutter/material.dart';

class StudyAbroadArticlesScreen extends StatelessWidget {
  const StudyAbroadArticlesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final articles = studyAbroadArticles;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Study Abroad Articles'),
      ),
      body: ListView.builder(
        itemCount: articles.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      StudyAbroadArticleDetailScreen(article: articles[index]),
                ),
              );
            },
            child: Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    articles[index].title,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'By ${articles[index].author} - ${articles[index].date}',
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Image.network(
                    articles[index].imageUrl,
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class StudyAbroadArticleDetailScreen extends StatelessWidget {
  final StudyAbroadArticle article;

  const StudyAbroadArticleDetailScreen({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Article Detail'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                article.title,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                'By ${article.author} - ${article.date}',
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 16),
              Image.network(
                article.imageUrl,
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 16),
              Text(
                article.content,
                style: const TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class StudyAbroadArticle {
  final String title;
  final String author;
  final String date;
  final String content;
  final String imageUrl;

  StudyAbroadArticle({
    required this.title,
    required this.author,
    required this.date,
    required this.content,
    required this.imageUrl,
  });
}

List<StudyAbroadArticle> studyAbroadArticles = [
  StudyAbroadArticle(
    title: '10 Tips for a Successful Study Abroad Experience',
    author: 'John Doe',
    date: 'May 15, 2023',
    content:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    imageUrl: 'https://example.com/images/article1.jpg',
  ),
  StudyAbroadArticle(
    title: 'Choosing the Right Destination for Your Study Abroad Journey',
    author: 'Jane Smith',
    date: 'June 5, 2023',
    content:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    imageUrl: 'https://example.com/images/article2.jpg',
  ),
  StudyAbroadArticle(
    title: 'Study Abroad Scholarships and Financial Aid Options',
    author: 'David Johnson',
    date: 'June 20, 2023',
    content:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    imageUrl: 'https://example.com/images/article3.jpg',
  ),
  // Thêm các bài viết khác ở đây
];
