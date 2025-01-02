//lib/screens/Home/BookingsPage.dart
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CeremonyBookingsPage extends StatefulWidget {
  @override
  _CeremonyBookingsPageState createState() => _CeremonyBookingsPageState();
}

class _CeremonyBookingsPageState extends State<CeremonyBookingsPage> {
  final List<Map<String, String>> bookings = [
    {"title": "Wedding Photography", "date": "2024-12-20"},
    {"title": "Sound System Rental", "date": "2024-12-25"},
    {"title": "Birthday Cake", "date": "2024-12-28"},
    {"title": "Decoration Services", "date": "2024-12-30"},
  ];

  void _deleteBooking(int index) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Delete Booking"),
          content: const Text("Are you sure you want to delete this booking?"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text("Cancel"),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  bookings.removeAt(index);
                });
                Navigator.of(context).pop();
              },
              child: const Text("Delete", style: TextStyle(color: Colors.red)),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          padding: const EdgeInsets.all(20.0),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF64B5F6), Color(0xFF1E88E5)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: const Text(
            "My Bookings",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Expanded(
          child: bookings.isEmpty
              ? Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.calendar_today, size: 100, color: Colors.grey),
                      SizedBox(height: 16),
                      Text(
                        "No bookings yet!",
                        style: TextStyle(fontSize: 18, color: Colors.grey),
                      ),
                    ],
                  ),
                )
              : ListView.separated(
                  itemCount: bookings.length,
                  separatorBuilder: (context, index) => Divider(
                    color: Colors.grey[300],
                    thickness: 1,
                    indent: 16,
                    endIndent: 16,
                  ),
                  itemBuilder: (context, index) {
                    final booking = bookings[index];
                    final bookingDate = DateFormat.yMMMMd()
                        .format(DateTime.parse(booking['date']!));
                    final isUpcoming = DateTime.parse(booking['date']!)
                        .isAfter(DateTime.now());

                    return Card(
                      elevation: 4,
                      margin: const EdgeInsets.symmetric(
                        vertical: 8.0,
                        horizontal: 16.0,
                      ),
                      child: ListTile(
                        title: Text(
                          booking['title']!,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: isUpcoming
                                ? Colors.green[700]
                                : Colors.grey[700],
                          ),
                        ),
                        subtitle: Text(
                          "Date: $bookingDate",
                          style: const TextStyle(fontSize: 16),
                        ),
                        leading: Icon(
                          Icons.bookmark,
                          color: isUpcoming ? Colors.green : Colors.grey,
                        ),
                        trailing: IconButton(
                          icon: const Icon(Icons.delete, color: Colors.red),
                          onPressed: () => _deleteBooking(index),
                        ),
                      ),
                    );
                  },
                ),
        ),
      ],
    );
  }
}
