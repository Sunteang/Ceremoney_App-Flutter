//lib/screens/Home/OffersPage.dart
import 'package:flutter/material.dart';
import 'package:testing/pages/service/ServicePage.dart';

class CeremonyOffersPage extends StatelessWidget {
  final List<Map<String, dynamic>> categories = [
    {'name': 'Wedding', 'icon': Icons.favorite},
    {'name': 'Anniversary', 'icon': Icons.cake},
    {'name': 'Party', 'icon': Icons.celebration},
    {'name': 'Housewarming', 'icon': Icons.home},
    {'name': 'Corporate', 'icon': Icons.business},
    {'name': 'Graduation', 'icon': Icons.school},
    {'name': 'Birthday', 'icon': Icons.cake},
    {'name': 'Baby Shower', 'icon': Icons.child_care},
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(20.0),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF42A5F5), Color(0xFF1565C0)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: const Text(
            "Browse All Ceremony Categories",
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ),
        // const SizedBox(height: 20),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
              ),
              itemCount: categories.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    // Navigate to Category Services page
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CategoryServicesPage(
                          categoryName: categories[index]['name'],
                        ),
                      ),
                    );
                  },
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundColor: Colors.grey[200],
                          child: Icon(
                            categories[index]['icon'],
                            size: 40,
                            color: Color(0xFF1565C0),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          categories[index]['name'],
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
