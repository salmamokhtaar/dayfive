import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ButtonsScreen(),
    );
  }
}

class ButtonsScreen extends StatelessWidget {
  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' Buttons'),
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // 1. butttons kan kowad
            ElevatedButton(
              onPressed: () {
                print('Elevated Button');
              },
              child: Text('Elevated Buttons'), //waxa ku qormaayo buttonka
            ),

            // space between buttons
            SizedBox(
              height: 10,
            ),

            // 2. Text Button (Flat Button)

            TextButton(
              onPressed: () {
                print('Text Buttons');
              },
              child: Text('Text button'),
            ),

            SizedBox(height: 10),

            // 3 Outlined Button (Bordered Button)
            OutlinedButton(onPressed: () {
           print("Outlined Button Clicked!");

            },
            child: Text('Outlined'),
            ),
              

                  SizedBox(height: 10),
           //icon button

           IconButton(
            onPressed: (){
              print("Icon Button Clicked!");

            },
            icon: Icon(Icons.home, color: Colors.blue,),
          
            ),
                
            SizedBox(height: 10),

            // icon Floating Action Button FAB
            FloatingActionButton(onPressed:(){
                   print("Floating Action Button Clicked!");
            },
          child: Icon(Icons.add),
          backgroundColor: Colors.blue,

            ),

         SizedBox(height: 10),


            // Gesture Button Custom Button

            GestureDetector(onTap: () {
               print("Custom Gesture Button Clicked!");

            },
            child: Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.blue,
              borderRadius: BorderRadius.circular(10)
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
