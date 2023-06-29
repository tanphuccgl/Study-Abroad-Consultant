// ignore_for_file: file_names, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:study_abroad_consultant/router/coordinator.dart';

class CustomerProfile {
  final String name;
  final String address;
  final String email;
  final String phoneNumber;
  final String desiredUniversity;

  CustomerProfile({
    required this.name,
    required this.address,
    required this.email,
    required this.phoneNumber,
    required this.desiredUniversity,
  });
}

class CustomerListScreen extends StatelessWidget {
  final List<CustomerProfile> customerProfiles = [
    CustomerProfile(
      name: 'John Doe',
      address: '123 Main Street',
      email: 'john.doe@example.com',
      phoneNumber: '123456789',
      desiredUniversity: 'ABC University',
    ),
    CustomerProfile(
      name: 'Jane Smith',
      address: '456 Elm Street',
      email: 'jane.smith@example.com',
      phoneNumber: '987654321',
      desiredUniversity: 'XYZ University',
    ),
    // Thêm các hồ sơ khách hàng khác vào danh sách
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Danh sách hồ sơ khách hàng'),
      ),
      body: ListView.builder(
        itemCount: customerProfiles.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            elevation: 2,
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Text(
                  customerProfiles[index].name.substring(0, 1),
                  style: const TextStyle(color: Colors.white),
                ),
              ),
              title: Text(
                customerProfiles[index].name,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(customerProfiles[index].desiredUniversity),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                XCoordinator.showCustomerDetail();
                // Xử lý khi người dùng nhấp vào một hồ sơ
                // Ví dụ: Hiển thị chi tiết hồ sơ
              },
            ),
          );
        },
      ),
    );
  }
}
