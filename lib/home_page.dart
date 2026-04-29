import 'package:flutter/material.dart';
import 'course_page.dart';
import 'notes_page.dart';
import 'TeachersPage.dart'; // Yeni sayfa import edildi.
import 'AnalysisPage.dart';
import 'FeedbackPage.dart';
import 'main.dart'; // Tema değiştirici için import edildi

class HomePage extends StatelessWidget {
  final List<String> courseNames = [
    "Calculus 1",
    "Calculus 2",
    "Physics 1",
    "Physics 2",
    "Physic lab",
    "Electric lab"
  ];

  final List<List<String>> courseContents = [
    ["Functions", "Limit", "Derivative", "Integration"],
    ["Sequences", "Series", "Parametric Equations"],
    ["Kinematics", "Dynamics", "Work-Energy", "Momentum"],
    ["Electricity", "Magnetism", "Waves"],
    ["Experiment 1", "Experiment 2", "Report Writing"],
    ["Experiment 1", "Experiment 2", "Report Writing"],
  ];

  final List<List<Color>> cardGradients = [
    [Colors.redAccent, Colors.deepOrange],
    [Colors.blueAccent, Colors.lightBlue],
    [Colors.greenAccent, Colors.teal],
    [Colors.orangeAccent, Colors.deepOrangeAccent],
    [Colors.purpleAccent, Colors.deepPurple],
    [Colors.tealAccent, Colors.cyan],
  ];

  final List<IconData> courseIcons = [
    Icons.calculate,
    Icons.functions,
    Icons.science,
    Icons.public,
    Icons.biotech,
    Icons.electric_bolt,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Welcome to', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400)),
            Text('Course Helper GIMBO 🚀', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ],
        ),
        leading: Builder(
          builder: (context) => IconButton(
            icon: Icon(Icons.menu),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
        actions: [
          ValueListenableBuilder<ThemeMode>(
            valueListenable: themeNotifier,
            builder: (_, ThemeMode currentMode, __) {
              return IconButton(
                icon: Icon(
                  currentMode == ThemeMode.light
                      ? Icons.dark_mode
                      : Icons.light_mode,
                ),
                onPressed: () {
                  themeNotifier.value = currentMode == ThemeMode.light
                      ? ThemeMode.dark
                      : ThemeMode.light;
                },
              );
            },
          ),
        ],
      ),
      drawer: _buildDrawer(context),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
          ),
          itemCount: courseNames.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CoursePage(
                    courseName: courseNames[index],
                    contents: courseContents[index],
                  ),
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: cardGradients[index],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: cardGradients[index][0].withOpacity(0.4),
                      blurRadius: 8,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      courseIcons[index],
                      size: 40,
                      color: Colors.white,
                    ),
                    SizedBox(height: 12),
                    Text(
                      courseNames[index],
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.blue,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            _buildBottomIcon(context, Icons.edit, 'pen page', NotesPage()),
           _buildBottomIcon(context, Icons.feedback, 'feedback page', FeedbackPage()),
            _buildBottomIcon(context, Icons.people, 'teachers page', TeachersPage()), 
            _buildBottomIcon(context, Icons.analytics, 'analysis page', AnalysisPage()),

          ],
        ),
      ),
    );
  }

  Widget _buildDrawer(BuildContext context) {
    return Drawer(
      width: MediaQuery.of(context).size.width * 0.5,
      child: Stack(
        children: [
          ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(color: Colors.blue),
                margin: EdgeInsets.only(bottom: 8.0),
                padding: EdgeInsets.all(10.0),
                child: Text(
                  'Courses',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
              for (int i = 0; i < courseNames.length; i++)
                ListTile(
                  leading: Icon(Icons.book),
                  title: Text(courseNames[i]),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CoursePage(
                        courseName: courseNames[i],
                        contents: courseContents[i],
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }

  IconButton _buildBottomIcon(
      BuildContext context, IconData icon, String title, Widget page) {
    return IconButton(
      icon: Icon(icon, color: Colors.white),
      onPressed: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => page,
        ),
      ),
    );
  }
}
