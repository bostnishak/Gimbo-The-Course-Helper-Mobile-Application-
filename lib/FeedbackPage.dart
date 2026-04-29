import 'package:flutter/material.dart';
import 'main.dart';

class FeedbackPage extends StatefulWidget {
  @override
  _FeedbackPageState createState() => _FeedbackPageState();
}

class _FeedbackPageState extends State<FeedbackPage> {
  final TextEditingController _feedbackController = TextEditingController();
  String _feedbackMessage = '';

  void _submitFeedback() {
    if (_feedbackController.text.isNotEmpty) {
      setState(() {
        _feedbackMessage = _feedbackController.text;
      });


      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Feedback submitted successfully!'),
        ),
      );

      _feedbackController.clear(); 
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Please enter your feedback before submitting.'),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Feedback', style: TextStyle(fontWeight: FontWeight.bold)),
        actions: [
          ValueListenableBuilder<ThemeMode>(
            valueListenable: themeNotifier,
            builder: (_, ThemeMode currentMode, __) {
              return IconButton(
                icon: Icon(currentMode == ThemeMode.light ? Icons.dark_mode : Icons.light_mode),
                onPressed: () { themeNotifier.value = currentMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light; },
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'We value your feedback!',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text(
              'Please let us know your suggestions, issues, or thoughts about the app.',
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 20.0),
            TextField(
              controller: _feedbackController,
              maxLines: 5,
              decoration: InputDecoration(
                hintText: 'Enter your feedback here...',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton.icon(
              onPressed: _submitFeedback,
              icon: Icon(Icons.send),
              label: Text('Submit'),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
              ),
            ),
            if (_feedbackMessage.isNotEmpty) ...[
              SizedBox(height: 30.0),
              Text(
                'Your Feedback:',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10.0),
              Text(
                _feedbackMessage,
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
