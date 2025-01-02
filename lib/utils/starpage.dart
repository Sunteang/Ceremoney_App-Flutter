import 'package:flutter/material.dart';

class StarPage extends StatelessWidget {
  const StarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Star"),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.star,
              size: 40,
              color: Colors.green,
            ),
            const Icon(
              Icons.star,
              size: 40,
              color: Colors.blue,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Icons.star,
                  size: 40,
                  color: Colors.green,
                ),
                Icon(
                  Icons.star,
                  size: 40,
                  color: Colors.blue,
                ),
                Icon(
                  Icons.star,
                  size: 50,
                  color: Colors.red,
                ),
                Icon(
                  Icons.star,
                  size: 40,
                  color: Colors.blue,
                ),
                Icon(
                  Icons.star,
                  size: 40,
                  color: Colors.green,
                ),
              ],
            ),
            const Icon(
              Icons.star,
              size: 40,
              color: Colors.blue,
            ),
            const Icon(
              Icons.star,
              size: 40,
              color: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}
