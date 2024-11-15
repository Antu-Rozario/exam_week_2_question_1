import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Need Blood',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: NeedBloodScreen(),
    );
  }
}

class NeedBloodScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Need Blood'),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              // Action for add button
            },
          ),
        ],
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 60,
              backgroundColor: Colors.grey,
              child: Icon(
                Icons.bloodtype,
                color: Colors.red,
                size: 50,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Donate Blood',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
