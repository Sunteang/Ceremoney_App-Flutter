import 'package:flutter/material.dart';

class CategoryServicesPage extends StatelessWidget {
  final String categoryName;

  // Constructor to accept the category name
  CategoryServicesPage({required this.categoryName});

  @override
  Widget build(BuildContext context) {
    // Define services based on category (this is hardcoded for now)
    final Map<String, List<String>> categoryServices = {
      'Wedding': [
        'Wedding Band',
        'Photography',
        'Bridal Makeup',
        'Venue Decoration'
      ],
      'Anniversary': ['Gifts', 'Catering', 'Decoration', 'Music'],
      'Party': ['DJ', 'Catering', 'Event Planning', 'Decoration'],
      'Housewarming': ['Decor', 'Catering', 'Music'],
      'Corporate': ['Corporate Events', 'Team Building', 'Workshops'],
      'Graduation': ['Graduation Party', 'Photography', 'Catering'],
      'Birthday': ['Birthday Cake', 'Party Planning', 'Entertainment'],
    };

    // Fetch the services list for the selected category
    final List<String> services = categoryServices[categoryName] ?? [];

    return Scaffold(
      appBar: AppBar(
        title: Text('$categoryName Services'),
        backgroundColor: Color(0xFF42A5F5),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: services.length,
          itemBuilder: (context, index) {
            return Card(
              elevation: 5,
              margin: const EdgeInsets.symmetric(vertical: 8),
              child: ListTile(
                title: Text(
                  services[index],
                  style: TextStyle(fontSize: 18),
                ),
                leading: Icon(Icons.star, color: Color(0xFF1565C0)),
                onTap: () {
                  // You can add any additional action when tapping a service
                  // For example, navigate to a service detail page or booking page
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
