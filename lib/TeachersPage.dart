import 'package:flutter/material.dart';

class TeachersPage extends StatelessWidget {
  final List<Map<String, dynamic>> teachers = [
    {
      'name': 'John Doe',
      'age': 40,
      'university': 'Harvard University',
      'branch': 'Mathematics',
      'rating': 4.8,
    },
    {
      'name': 'Jane Smith',
      'age': 35,
      'university': 'Stanford University',
      'branch': 'Physics',
      'rating': 4.6,
    },
    {
      'name': 'Emily Johnson',
      'age': 45,
      'university': 'MIT',
      'branch': 'Computer Science',
      'rating': 4.9,
    },
    {
      'name': 'Michael Brown',
      'age': 50,
      'university': 'Oxford University',
      'branch': 'Chemistry',
      'rating': 4.7,
    },
    {
      'name': 'Sophia Williams',
      'age': 38,
      'university': 'University of Cambridge',
      'branch': 'Biology',
      'rating': 4.5,
    },
    {
      'name': 'David Wilson',
      'age': 43,
      'university': 'California Institute of Technology',
      'branch': 'Astronomy',
      'rating': 4.6,
    },
    {
      'name': 'Olivia Martinez',
      'age': 32,
      'university': 'Princeton University',
      'branch': 'Philosophy',
      'rating': 4.9,
    },
    {
      'name': 'Liam Garcia',
      'age': 37,
      'university': 'University of Chicago',
      'branch': 'Economics',
      'rating': 4.8,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Teachers'),
      ),
      body: ListView.builder(
        itemCount: teachers.length,
        itemBuilder: (context, index) {
          final teacher = teachers[index];
          return Card(
            margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: ListTile(
              leading: CircleAvatar(
                child: Text(teacher['name'][0]), 
              ),
              title: Text(teacher['name']),
              subtitle: Text(
                'Branch: ${teacher['branch']}\n'
                'Age: ${teacher['age']}\n'
                'University: ${teacher['university']}',
              ),
              trailing: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.star, color: Colors.amber),
                  Text('${teacher['rating']}'),
                ],
              ),
              isThreeLine: true,
            ),
          );
        },
      ),
    );
  }
}
