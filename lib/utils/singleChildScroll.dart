import 'package:flutter/material.dart';

class SignleChildScroll extends StatelessWidget {
  const SignleChildScroll({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Teang Scroll-View"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Container(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 150,
                      width: 150,
                      color: Colors.grey,
                      child: Text("Container1"),
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 150,
                      width: 150,
                      color: Colors.red,
                      child: Text("Container2"),
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 150,
                      width: 150,
                      color: Colors.green,
                      child: Text("Container3"),
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 150,
                      width: 150,
                      color: Colors.blue,
                      child: Text("Container4"),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: 150,
                        width: double.infinity,
                        color: Colors.blue,
                        child: Text("Column 1"),
                      ),
                      SizedBox(height: 10),
                      Container(
                        alignment: Alignment.center,
                        height: 150,
                        width: double.infinity,
                        color: Colors.green,
                        child: Text("Column 1"),
                      ),
                      SizedBox(height: 10),
                      Container(
                        alignment: Alignment.center,
                        height: 150,
                        width: double.infinity,
                        color: Colors.grey,
                        child: Text("Column 1"),
                      ),
                      SizedBox(height: 10),
                      Container(
                        alignment: Alignment.center,
                        height: 150,
                        width: double.infinity,
                        color: Colors.yellow,
                        child: Text("Column 1"),
                      ),
                      SizedBox(height: 10),
                      Container(
                        alignment: Alignment.center,
                        height: 150,
                        width: double.infinity,
                        color: Colors.red,
                        child: Text("Column 1"),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
