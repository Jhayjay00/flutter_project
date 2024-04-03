// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

List<Widget> imageList = [
  Image.asset('assets/images/Bar.webp'),
  Image.asset('assets/images/cat.jpeg'),
  Image.asset('assets/images/eye.jpeg'),
  Image.asset('assets/images/girl.jpeg'),
  Image.asset('assets/images/ku.jpg'),
  Image.asset('assets/images/pe.jpeg'),
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 212, 10, 169),
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Bankai!!',
              style: TextStyle(fontWeight: FontWeight.w900),
            ),
            SizedBox(
              width: 120,
            ),
            ElevatedButton(
              onPressed: null,
              child: Icon(Icons.notification_add, color: Colors.black),
            ),
            Icon(Icons.settings),
          ],
        ),
      ),
      drawer: Drawer(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(
          childAspectRatio: 1.3,
          shrinkWrap: true,
          crossAxisCount: 2,
        children:  List.generate(6, (index){
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              imageList[index],
            ],
          );
        }
        ),
      ),
      ),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(
            backgroundColor: Colors.purple,
            icon: Icon(Icons.home),
            label: 'Home'),
        BottomNavigationBarItem(
            backgroundColor: Colors.purple,
            icon: Icon(Icons.search),
            label: 'Search'),
        BottomNavigationBarItem(
            backgroundColor: Colors.purple,
            icon: Icon(Icons.settings),
            label: 'Shikai'),
        BottomNavigationBarItem(
            backgroundColor: Colors.purple,
            icon: Icon(Icons.person),
            label: 'Shinigami'),
      ]),
    );
  }
}