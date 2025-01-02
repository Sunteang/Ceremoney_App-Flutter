//lib/screens/Home/HomeScreen.dart

import 'package:flutter/material.dart';
import 'package:testing/pages/service/ServicePage.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Hero Section
          Container(
            padding: const EdgeInsets.all(20.0),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF42A5F5), Color(0xFF1565C0)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Welcome to Ceremony Planner!",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Color(0xFF1565C0),
                  ),
                  child: const Text("Browse All Categories"),
                ),
              ],
            ),
          ),

          // Category Section
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: const Text(
              "Categories",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          GridView.count(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            children: [
              _buildCategoryCard(
                  context, "Wedding", Icons.favorite, Colors.pink),
              _buildCategoryCard(
                  context, "Party", Icons.celebration, Colors.orange),
              _buildCategoryCard(
                  context, "Housewarming", Icons.home, Colors.green),
              _buildCategoryCard(
                  context, "Others", Icons.category, Colors.blue),
            ],
          ),

          // Popular Services Section
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: const Text(
              "Popular Services",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          ListView(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: [
              _buildServiceTile(Icons.music_note, "Band and Sound"),
              _buildServiceTile(Icons.camera_alt, "Photography Services"),
              _buildServiceTile(Icons.brush, "Beauty Parlour"),
              _buildServiceTile(Icons.king_bed, "Bridal Accessories"),
            ],
          ),

          // Testimonials Section
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: const Text(
              "What Our Users Say",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 120,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                _buildTestimonialCard(
                    "Teangg", "This app made planning so easy!"),
                _buildTestimonialCard(
                    "Jan", "Great services and user-friendly."),
                _buildTestimonialCard("Leeee", "Highly recommend this app."),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryCard(
      BuildContext context, String title, IconData icon, Color color) {
    return GestureDetector(
      onTap: () {
        if (title != "Others") {
          // Navigate to the OffersPage when "Others" is tapped
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CategoryServicesPage(categoryName: title),
            ),
          );
        }
      },
      child: Card(
        color: color.withOpacity(0.2),
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 40, color: color),
            const SizedBox(height: 10),
            Text(
              title,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildServiceTile(IconData icon, String title) {
    return Card(
      child: ListTile(
        leading: Icon(icon, color: Color(0xFF1565C0)),
        title: Text(title),
        trailing: const Icon(Icons.arrow_forward_ios),
        onTap: () {
          // Add action if needed
        },
      ),
    );
  }

  Widget _buildTestimonialCard(String name, String feedback) {
    return Container(
      width: 200,
      margin: const EdgeInsets.all(8.0),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              blurRadius: 5,
              spreadRadius: 2),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(name,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
          SizedBox(height: 5),
          Text(feedback, style: TextStyle(fontSize: 14)),
        ],
      ),
    );
  }
}
