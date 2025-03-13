import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ButtonScreen(),
    );
  }
}

class ButtonScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Button Types"),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // 1️⃣ Elevated Button (Default Button)
            ElevatedButton(
              onPressed: () {
                print("Elevated Button Clicked!");
              },
              child: Text("Elevated Button"),
            ),

            SizedBox(height: 10),

            // 2️⃣ Text Button (Flat Button)
            TextButton(
              onPressed: () {
                print("Text Button Clicked!");
              },
              child: Text("Text Button"),
            ),

            SizedBox(height: 10),

            // 3️⃣ Outlined Button (Bordered Button)
            OutlinedButton(
              onPressed: () {
                print("Outlined Button Clicked!");
              },
              child: Text("Outlined Button"),
            ),

            SizedBox(height: 10),

            // 4️⃣ Icon Button (Button with Icon)
            IconButton(
              onPressed: () {
                print("Icon Button Clicked!");
              },
              icon: Icon(Icons.favorite, color: Colors.red),
            ),

            SizedBox(height: 10),

            // 5️⃣ Floating Action Button (FAB)
            FloatingActionButton(
              onPressed: () {
                print("Floating Action Button Clicked!");
              },
              child: Icon(Icons.add),
              backgroundColor: Colors.green,
            ),

            SizedBox(height: 10),

            // 6️⃣ Gesture Detector (Custom Button)
            GestureDetector(
              onTap: () {
                print("Custom Gesture Button Clicked!");
              },
              child: Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  "Custom Button",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
