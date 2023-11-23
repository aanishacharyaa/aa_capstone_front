import 'package:flutter/material.dart';

class AddPortfolioItemScreen extends StatefulWidget {
  @override
  _AddPortfolioItemScreenState createState() => _AddPortfolioItemScreenState();
}

class _AddPortfolioItemScreenState extends State<AddPortfolioItemScreen> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _imageUrlController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Portfolio Item'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _titleController,
              decoration: InputDecoration(labelText: 'Title'),
            ),
            TextField(
              controller: _descriptionController,
              decoration: InputDecoration(labelText: 'Description'),
            ),
            TextField(
              controller: _imageUrlController,
              decoration: InputDecoration(labelText: 'Image URL'),
            ),
            ElevatedButton(
              onPressed: () => _addPortfolioItem(context),
              child: Text('Add Item'),
            ),
          ],
        ),
      ),
    );
  }

  void _addPortfolioItem(BuildContext context) {
    // Implement logic to add a new item to the user's portfolio on the server
    // Use the _titleController.text, _descriptionController.text, _imageUrlController.text, etc.
    // You can use a POST request to the /api/portfolio/:userId endpoint
    // Navigate back to the previous screen
    Navigator.pop(context);
  }
}
