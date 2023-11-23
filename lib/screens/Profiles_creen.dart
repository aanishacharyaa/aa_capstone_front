import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  final Map<String, dynamic>
      userProfile; // Assume you pass the user profile as a parameter

  ProfileScreen({required this.userProfile});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Display user details
            Text('Name: ${userProfile['name']}'),
            Text('Email: ${userProfile['email']}'),

            // Display skills
            Text('Skills: ${userProfile['skills'].join(', ')}'),

            // Display experience
            Text('Experience: ${userProfile['experience']}'),

            // Display portfolio
            Text('Portfolio:'),
            for (var item in userProfile['portfolio'])
              ListTile(
                title: Text(item['title']),
                subtitle: Text(item['description']),
                // You can add an image here using Image.network(item['imageUrl'])
              ),
          ],
        ),
      ),
    );
  }
}
