import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(color: Colors.purple),
         child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [ 
            Image(image:AssetImage("assets/images/mayuri download.jpeg")),  
            Center(
              child: Padding( 
                padding: EdgeInsets.all(8.0),
                child: Text('Bankai!',
                style: TextStyle( color: Colors.orange, fontSize: 39)),
              ),
            ),
          ],
        ),
      ),
    ),
    );
  }
}
