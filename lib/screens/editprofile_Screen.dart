import 'package:aa_capstone/screens/Addportfolioitemscreen.dart';
import 'package:flutter/material.dart';

class EditProfileScreen extends StatefulWidget {
  final Map<String, dynamic>
      userProfile; // Assume you pass the user profile as a parameter

  EditProfileScreen({required this.userProfile});

  @override
  _EditProfileScreenState createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  final TextEditingController _skillsController = TextEditingController();
  final TextEditingController _experienceController = TextEditingController();
  // Add controllers for other profile details

  @override
  void initState() {
    super.initState();
    _skillsController.text = widget.userProfile['skills'].join(', ');
    _experienceController.text = widget.userProfile['experience'];
    // Initialize other controllers with existing profile data
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _skillsController,
              decoration: InputDecoration(labelText: 'Skills'),
            ),
            TextField(
              controller: _experienceController,
              decoration: InputDecoration(labelText: 'Experience'),
            ),
            // Add input fields for other profile details

            ElevatedButton(
              onPressed: () => _updateProfile(context),
              child: Text('Save'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => AddPortfolioItemScreen()),
                );
              },
              child: Text('Add Portfolio Item'),
            ),
          ],
        ),
      ),
    );
  }

  void _updateProfile(BuildContext context) {
    // Implement logic to update the user profile on the server
    // Use the _skillsController.text, _experienceController.text, etc.
    // You can use a PUT request to the /api/profile/:userId endpoint
  }
}
