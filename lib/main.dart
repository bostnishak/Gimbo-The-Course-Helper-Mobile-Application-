import 'package:flutter/material.dart';
import 'dart:ui';
import 'home_page.dart';
import 'placeholder_page.dart';  

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Main page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

Widget _buildDrawer(BuildContext context) {
  return Drawer(
    width: MediaQuery.of(context).size.width * 0.5,
    child: Stack(
      children: [
        BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            color: const Color.fromARGB(255, 238, 234, 234).withOpacity(0.3),
          ),
        ),
        ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              margin: EdgeInsets.only(bottom: 8.0),
              padding: EdgeInsets.all(10.0),
              child: Text(
                'Courses',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),

            ListTile(
              leading: Icon(Icons.book),
              title: Text('Calculus 1'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PlaceholderPage(title: 'Calculus 1'),
                  ),
                );
              },
            ),

            ListTile(
              leading: Icon(Icons.book),
              title: Text('Calculus 2'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PlaceholderPage(title: 'Calculus 2'),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.book),
              title: Text('Physics 1'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PlaceholderPage(title: 'Physics 1'),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.book),
              title: Text('Physics 2'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PlaceholderPage(title: 'Physics 2'),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.book),
              title: Text('ICT'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PlaceholderPage(title: 'ICT'),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.book),
              title: Text('Lab'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PlaceholderPage(title: 'Lab'),
                  ),
                );
              },
            ),
          ],
        ),
      ],
    ),
  );
}
