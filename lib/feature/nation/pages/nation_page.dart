import 'package:flutter/material.dart';
import 'package:study_abroad_consultant/network/model/nation.dart';
import 'package:study_abroad_consultant/router/coordinator.dart';

class NationPage extends StatelessWidget {
  const NationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Danh sách quốc gia'),
      ),
      body: ListView.builder(
        itemCount: nations.length,
        itemBuilder: (BuildContext context, int index) {
          return _buildCountryCard(nations[index]);
        },
      ),
    );
  }

  Widget _buildCountryCard(Nation e) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: ListTile(
        title: Text(
          e.name,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        trailing: const Icon(Icons.arrow_forward_ios),
        onTap: () {
          XCoordinator.showDetailNation(e);
        },
      ),
    );
  }
}
