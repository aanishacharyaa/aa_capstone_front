import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final List<Map<String, dynamic>> projects = [
    {
      'name': 'Project 1',
      'client': 'Client A',
      'image': 'assets/project1.jpg', // Placeholder image path
      // Add more project details as needed
    },
    {
      'name': 'Project 2',
      'client': 'Client B',
      'image': 'assets/project2.jpg', // Placeholder image path
      // Add more project details as needed
    },
  ];

  final List<Map<String, dynamic>> portfolio = [
    {
      'title': 'Artwork 1',
      'description': 'Description for Artwork 1',
      'image': 'assets/artwork1.jpg', // Placeholder image path
      // Add more portfolio details as needed
    },
    {
      'title': 'Artwork 2',
      'description': 'Description for Artwork 2',
      'image': 'assets/artwork2.jpg', // Placeholder image path
      // Add more portfolio details as needed
    },
  ];

  final Map<String, dynamic> aboutInfo = {
    'name': 'Tom',
    'image': 'assets/tom.jpg', // Placeholder image path
    'bio':
        'Experienced freelance graphic designer specializing in... (add Tom\'s bio)',
    // Add more about details as needed
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tom\'s Freelance App'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'About',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            _buildAboutSection(),
            SizedBox(height: 16),
            Text(
              'Portfolio',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            _buildPortfolioList(),
            SizedBox(height: 16),
            Text(
              'Projects',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            _buildProjectsList(),
          ],
        ),
      ),
    );
  }

  Widget _buildAboutSection() {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(
              "https://boosting-ground.com/uploads/images/74fde70d553b74988ae9c03fa9ba9e0b.jpeg"),
          radius: 30,
        ),
        title: Text(aboutInfo['name']),
        subtitle: Text(aboutInfo['bio']),
      ),
    );
  }

  Widget _buildPortfolioList() {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: portfolio.length,
      itemBuilder: (context, index) {
        return Card(
          margin: EdgeInsets.symmetric(vertical: 8),
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(portfolio[index]['image']),
              radius: 30,
            ),
            title: Text(portfolio[index]['title']),
            subtitle: Text(portfolio[index]['description']),
          ),
        );
      },
    );
  }

  Widget _buildProjectsList() {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: projects.length,
      itemBuilder: (context, index) {
        return Card(
          margin: EdgeInsets.symmetric(vertical: 8),
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(projects[index]['image']),
              radius: 30,
            ),
            title: Text(projects[index]['name']),
            subtitle: Text(projects[index]['client']),
          ),
        );
      },
    );
  }
}
