import 'package:flutter/material.dart';

class AnalysisPage extends StatelessWidget {
  final List<Map<String, dynamic>> analysisData = [
    {
      'course': 'Calculus 1',
      'correct': 7,
      'incorrect': 2,
      'unanswered': 1,
    },
    {
      'course': 'Calculus 2',
      'correct': 6,
      'incorrect': 3,
      'unanswered': 1,
    },
    {
      'course': 'Physics 1',
      'correct': 8,
      'incorrect': 1,
      'unanswered': 1,
    },
    {
      'course': 'Physics 2',
      'correct': 5,
      'incorrect': 4,
      'unanswered': 1,
    },
    {
      'course': 'Physic lab',
      'correct': 9,
      'incorrect': 1,
      'unanswered': 0,
    },
    {
      'course': 'Electric lab',
      'correct': 7,
      'incorrect': 2,
      'unanswered': 1,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Analysis'),
      ),
      body: ListView.builder(
        itemCount: analysisData.length,
        itemBuilder: (context, index) {
          final courseData = analysisData[index];
          final int totalQuestions = courseData['correct'] +
              courseData['incorrect'] +
              courseData['unanswered'];
          final double successRate = (courseData['correct'] / totalQuestions) * 100;

          return Card(
            margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    courseData['course'],
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildStatistic('Correct', courseData['correct'], Colors.green),
                      _buildStatistic('Incorrect', courseData['incorrect'], Colors.red),
                      _buildStatistic('Unanswered', courseData['unanswered'], Colors.grey),
                    ],
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'Success Rate: ${successRate.toStringAsFixed(1)}%',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.blue,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildStatistic(String label, int value, Color color) {
    return Column(
      children: [
        Text(
          value.toString(),
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            color: color,
          ),
        ),
        SizedBox(height: 4.0),
        Text(
          label,
          style: TextStyle(fontSize: 14.0, color: Colors.black54),
        ),
      ],
    );
  }
}
