// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {

List<String> imageList =[
  'assets/images/Bar.webp',
  'assets/images/cat.jpeg',
  'assets/images/eye.jpeg',
  'assets/images/girl.jpeg',
  'assets/images/ku.jpg',
  'assets/images/pe.jpeg'

];

List<String> imageTitle=[
  'Barragan',
  'Grimjow',
  'Rose',
  'Halibel',
  'Tosen',
  'Szayel'
  
];

double Width = MediaQuery.of(context).size.width;
double Height = MediaQuery.of(context).size.height;


List<Widget> gridstuff = List.generate(6, (index) {
    return Container(
      width: Width,
      height: Height,
      decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(4),
      image: DecorationImage(
        image: AssetImage(imageList[index]),
        fit: BoxFit.cover,
      ),
      ),
      child: Center(
        child: Text(imageTitle[index], style:TextStyle(
          color: Color.fromARGB(255, 13, 20, 2),
          fontSize: 34,
          fontWeight: FontWeight.bold,
          shadows: [
              Shadow(
                blurRadius: 5,
                color: Colors.black.withOpacity(0.5),
                offset: Offset(5, 5),
              ),
          ],
        
          ),
        ),
      ),
  );
});


     return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Arrancar',
              style: TextStyle(fontWeight: FontWeight.w900),
            ),
            SizedBox(
              width: 120,
            ),
            TextButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('Alert'),
                        content: Text('Bankai Allowed.'),
                        actions: [
                          TextButton(
                            child: Text('OK'),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          )
                        ],
                      );
                    });
              },
              child: Icon(Icons.notification_add, color: Colors.black),
            ),
            Icon(Icons.settings),
          ],
        ),
      ),
      drawer: Drawer(
          child: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () {
              Navigator.pushNamed(context, '/');
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () {
              Navigator.pushNamed(context, '/settings');
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Profile'),
            onTap: () {
              Navigator.pushNamed(context, '/profile');
            },
          ),
        ],
      )),
      body: 
      Container(
        decoration: BoxDecoration(
        color: Colors.black,
          ),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisExtent: 240,
            ),
            itemCount: gridstuff.length,
            itemBuilder: (BuildContext context, int index){
              return Column(
                children: [
                  Container(height:210,child: gridstuff[index]),
                ],
              );
            }),
        ),



      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        currentIndex: 0,
        items: const [
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
     ],
        onTap: (int index) {
          switch (index) {
            case 0:
              Navigator.pushNamed(context, '/');
              break;
            case 2:
              Navigator.pushNamed(context, '/settings');
              break;
            case 3:
              Navigator.pushNamed(context, '/profile');
              break;
          }
        },
      ),
    );
  }
}