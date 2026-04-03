import 'package:flutter/material.dart';


class CoursePage extends StatefulWidget {
  final String courseName;
  final List<String> contents;

  CoursePage({required this.courseName, required this.contents});

  @override
  _CoursePageState createState() => _CoursePageState();
}

class _CoursePageState extends State<CoursePage> {
  bool _showQuestions = false; // To toggle visibility of questions
  Map<String, String> _selectedAnswers = {}; // To store the selected answers
final Map<String, List<Map<String, dynamic>>> courseQuestions = {
  "Calculus 1": [
    {
      "question": "Evaluate the limit \( \\lim_{x \\to 0} \\frac{\\sin x}{x} \).",
      "options": ["A) 0", "B) 1", "C) ∞", "D) -1"],
      "correctAnswer": "B) 1"
    },
    {
      "question": "Find the derivative: \( f(x) = 3x^2 + 5x + 7 \)",
      "options": ["A) \( 6x + 5 \)", "B) \( 6x + 7 \)", "C) \( 3x + 5 \)", "D) \( 6x + 6 \)"],
      "correctAnswer": "A) \( 6x + 5 \)"
    },
    {
      "question": "Find the integral: \( \\int 2x \, dx \)",
      "options": ["A) \( x^2 + C \)", "B) \( x^2 + 2x + C \)", "C) \( x^2 \)", "D) \( x^2 + C \)"],
      "correctAnswer": "A) \( x^2 + C \)"
    },
    {
      "question": "Find the derivative: \( f(x) = \\cos x \)",
      "options": ["A) \( \\sin x \)", "B) \( -\\sin x \)", "C) \( -\\cos x \)", "D) \( \\cos x \)"],
      "correctAnswer": "B) \( -\\sin x \)"
    },
    {
      "question": "Find the limit: \( \\lim_{x \\to 2} (x^2 - 4) \)",
      "options": ["A) 0", "B) 4", "C) 1", "D) 2"],
      "correctAnswer": "A) 0"
    },
    {
      "question": "Find the integral: \( \\int (3x^3 + 2x^2) \, dx \)",
      "options": ["A) \( \\frac{x^4}{4} + \\frac{2x^3}{3} + C \)", "B) \( 3x^4 + 2x^3 + C \)", "C) \( \\frac{x^4}{4} + \\frac{x^3}{3} + C \)", "D) \( x^4 + 2x^3 + C \)"],
      "correctAnswer": "A) \( \\frac{x^4}{4} + \\frac{2x^3}{3} + C \)"
    },
    {
      "question": "What is the derivative of \( f(x) = e^x \)?",
      "options": ["A) \( e^x \)", "B) \( e^x + 1 \)", "C) \( e^x - 1 \)", "D) 0"],
      "correctAnswer": "A) \( e^x \)"
    },
    {
      "question": "Find the derivative of \( f(x) = \\ln(x) \).",
      "options": ["A) \( \\frac{1}{x} \)", "B) \( \\ln(x) \)", "C) \( x \)", "D) 1"],
      "correctAnswer": "A) \( \\frac{1}{x} \)"
    },
    {
      "question": "Evaluate the limit: \( \\lim_{x \\to 1} \\frac{x^3 - 1}{x - 1} \)",
      "options": ["A) 1", "B) 3", "C) 0", "D) -1"],
      "correctAnswer": "B) 3"
    },
    {
      "question": "Evaluate the integral: \( \\int_0^1 x^2 \, dx \)",
      "options": ["A) \( \\frac{1}{3} \)", "B) \( \\frac{1}{2} \)", "C) 1", "D) \( \\frac{1}{4} \)"],
      "correctAnswer": "A) \( \\frac{1}{3} \)"
    },
  ],
    "Calculus 2": [
    {
      "question": "Evaluate the integral: \( \\int x^2 e^x \, dx \)",
      "options": ["A) \( x^2 e^x - 2x e^x + 2e^x + C \)", "B) \( x^2 e^x + C \)", "C) \( x^2 e^x - e^x + C \)", "D) None of the above"],
      "correctAnswer": "A) \( x^2 e^x - 2x e^x + 2e^x + C \)"
    },
    {
      "question": "Find the derivative of \( f(x) = \\ln(x^2 + 1) \)",
      "options": ["A) \( \\frac{2x}{x^2 + 1} \)", "B) \( \\frac{x}{x^2 + 1} \)", "C) \( \\frac{1}{x^2 + 1} \)", "D) \( 2x \)"],
      "correctAnswer": "A) \( \\frac{2x}{x^2 + 1} \)"
    },
    {
      "question": "What is the integral of \( \\int \\frac{1}{x^2 + 1} \, dx \)?",
      "options": ["A) \( \\tan^{-1}(x) + C \)", "B) \( \\ln(x) + C \)", "C) \( \\sin^{-1}(x) + C \)", "D) \( x + C \)"],
      "correctAnswer": "A) \( \\tan^{-1}(x) + C \)"
    },
    {
      "question": "Find the integral: \( \\int \\frac{1}{x} \, dx \)",
      "options": ["A) \( \\ln|x| + C \)", "B) \( \\ln(x) + C \)", "C) \( x + C \)", "D) None of the above"],
      "correctAnswer": "A) \( \\ln|x| + C \)"
    },
    {
      "question": "Find the derivative of \( f(x) = \\sin^{-1}(x) \)",
      "options": ["A) \( \\frac{1}{\\sqrt{1 - x^2}} \)", "B) \( \\frac{1}{x^2} \)", "C) \( \\frac{1}{\\sqrt{x^2 + 1}} \)", "D) \( \\frac{1}{x} \)"],
      "correctAnswer": "A) \( \\frac{1}{\\sqrt{1 - x^2}} \)"
    },
    {
      "question": "Evaluate the limit: \( \\lim_{x \\to 0} \\frac{\\sin x}{x} \)",
      "options": ["A) 1", "B) 0", "C) ∞", "D) -1"],
      "correctAnswer": "A) 1"
    },
    {
      "question": "Find the integral: \( \\int e^x \\cos x \, dx \)",
      "options": ["A) \( e^x (\\sin x + \\cos x) + C \)", "B) \( e^x \\sin x + C \)", "C) \( e^x \\cos x + C \)", "D) None of the above"],
      "correctAnswer": "A) \( e^x (\\sin x + \\cos x) + C \)"
    },
    {
      "question": "Find the Taylor series expansion of \( \\cos x \) around \( x = 0 \).",
      "options": ["A) \( 1 - \\frac{x^2}{2!} + \\frac{x^4}{4!} - ... \)", "B) \( 1 + x + \\frac{x^2}{2!} - ... \)", "C) \( 1 - x + x^2 - ... \)", "D) \( 1 + \\frac{x^2}{2!} - \\frac{x^3}{3!} - ... \)"],
      "correctAnswer": "A) \( 1 - \\frac{x^2}{2!} + \\frac{x^4}{4!} - ... \)"
    },
    {
      "question": "Find the integral: \( \\int \\sin^2(x) \, dx \)",
      "options": ["A) \( \\frac{x}{2} - \\frac{\\sin(2x)}{4} + C \)", "B) \( \\sin(x) + C \)", "C) \( \\frac{x}{2} + C \)", "D) None of the above"],
      "correctAnswer": "A) \( \\frac{x}{2} - \\frac{\\sin(2x)}{4} + C \)"
    },
    {
      "question": "Find the derivative of \( f(x) = \\cos^{-1}(x) \)",
      "options": ["A) \( -\\frac{1}{\\sqrt{1 - x^2}} \)", "B) \( \\frac{1}{\\sqrt{1 - x^2}} \)", "C) \( \\frac{1}{x^2} \)", "D) \( -\\frac{1}{x} \)"],
      "correctAnswer": "A) \( -\\frac{1}{\\sqrt{1 - x^2}} \)"
    },
  ],
  "Physics 1": [
    {
      "question": "What is the formula for velocity?",
      "options": ["A) \( v = at + u \)", "B) \( v = u + at \)", "C) \( v = u - at \)", "D) \( v = 2u + at \)"],
      "correctAnswer": "B) \( v = u + at \)"
    },
    {
      "question": "What is the formula for force?",
      "options": ["A) \( F = ma \)", "B) \( F = mg \)", "C) \( F = \\frac{m}{a} \)", "D) None of the above"],
      "correctAnswer": "A) \( F = ma \)"
    },
    {
      "question": "What is the acceleration due to gravity on Earth?",
      "options": ["A) 9.8 m/s²", "B) 10 m/s²", "C) 1.6 m/s²", "D) 9.0 m/s²"],
      "correctAnswer": "A) 9.8 m/s²"
    },
    {
      "question": "What is the formula for work done?",
      "options": ["A) \( W = Fd \)", "B) \( W = F\\cdot v \)", "C) \( W = mgh \)", "D) \( W = F\\cdot t \)"],
      "correctAnswer": "A) \( W = Fd \)"
    },
    {
      "question": "What is the unit of energy?",
      "options": ["A) Joule", "B) Watt", "C) Newton", "D) Volt"],
      "correctAnswer": "A) Joule"
    },
    {
      "question": "What is the formula for kinetic energy?",
      "options": ["A) \( KE = \\frac{1}{2} mv^2 \)", "B) \( KE = mgh \)", "C) \( KE = mv \)", "D) \( KE = \\frac{1}{2} m^2v^2 \)"],
      "correctAnswer": "A) \( KE = \\frac{1}{2} mv^2 \)"
    },
    {
      "question": "What is the formula for gravitational potential energy?",
      "options": ["A) \( PE = mgh \)", "B) \( PE = \\frac{1}{2} mv^2 \)", "C) \( PE = Fd \)", "D) \( PE = mg^2 \)"],
      "correctAnswer": "A) \( PE = mgh \)"
    },
    {
      "question": "What is the formula for centripetal force?",
      "options": ["A) \( F = \\frac{mv^2}{r} \)", "B) \( F = ma \)", "C) \( F = \\frac{m}{r} \)", "D) \( F = m\\cdot g \)"],
      "correctAnswer": "A) \( F = \\frac{mv^2}{r} \)"
    },
    {
      "question": "What is the unit of force?",
      "options": ["A) Newton", "B) Joule", "C) Watt", "D) Meter"],
      "correctAnswer": "A) Newton"
    },
    {
      "question": "What is the formula for power?",
      "options": ["A) \( P = \\frac{W}{t} \)", "B) \( P = Fd \)", "C) \( P = mgh \)", "D) \( P = mv \)"],
      "correctAnswer": "A) \( P = \\frac{W}{t} \)"
    },
  ],
  "Physics 2": [
    {
      "question": "What is the formula for the electric force between two charges?",
      "options": ["A) \( F = k \\frac{q_1 q_2}{r^2} \)", "B) \( F = m\\cdot a \)", "C) \( F = \\frac{1}{2} mv^2 \)", "D) \( F = \\frac{m}{r} \)"],
      "correctAnswer": "A) \( F = k \\frac{q_1 q_2}{r^2} \)"
    },
    {
      "question": "What is Coulomb's constant?",
      "options": ["A) \( 8.99 \\times 10^9 \, \text{N} \cdot \text{m}^2/\text{C}^2 \)", "B) 9.8 m/s²", "C) \( 1.6 \\times 10^{-19} \, \text{C} \)", "D) \( 6.63 \\times 10^{-34} \, \text{J} \cdot \text{s} \)"],
      "correctAnswer": "A) \( 8.99 \\times 10^9 \, \text{N} \cdot \text{m}^2/\text{C}^2 \)"
    },
    {
      "question": "What is the formula for electric potential energy?",
      "options": ["A) \( U = k \\frac{q_1 q_2}{r} \)", "B) \( U = \\frac{1}{2} mv^2 \)", "C) \( U = mgh \)", "D) \( U = Fd \)"],
      "correctAnswer": "A) \( U = k \\frac{q_1 q_2}{r} \)"
    },
    {
      "question": "What is the unit of electric charge?",
      "options": ["A) Coulomb", "B) Newton", "C) Volt", "D) Ampere"],
      "correctAnswer": "A) Coulomb"
    },
    {
      "question": "What is Ohm's Law?",
      "options": ["A) \( V = IR \)", "B) \( P = \\frac{V^2}{R} \)", "C) \( V = P \\cdot R \)", "D) \( I = \\frac{V}{R} \)"],
      "correctAnswer": "A) \( V = IR \)"
    },
    {
      "question": "What is the formula for current?",
      "options": ["A) \( I = \\frac{V}{R} \)", "B) \( I = V + R \)", "C) \( I = \\frac{1}{V} \)", "D) \( I = R + V \)"],
      "correctAnswer": "A) \( I = \\frac{V}{R} \)"
    },
    {
      "question": "What is the unit of resistance?",
      "options": ["A) Ohm", "B) Coulomb", "C) Volt", "D) Ampere"],
      "correctAnswer": "A) Ohm"
    },
    {
      "question": "What is the formula for power in an electric circuit?",
      "options": ["A) \( P = VI \)", "B) \( P = \\frac{V^2}{R} \)", "C) \( P = I^2 R \)", "D) All of the above"],
      "correctAnswer": "D) All of the above"
    },
    {
      "question": "What is the formula for the energy stored in a capacitor?",
      "options": ["A) \( U = \\frac{1}{2} C V^2 \)", "B) \( U = \\frac{1}{2} mv^2 \)", "C) \( U = mgh \)", "D) \( U = \\frac{1}{2} mv^2 \)"],
      "correctAnswer": "A) \( U = \\frac{1}{2} C V^2 \)"
    },
    {
      "question": "What is the formula for electric field?",
      "options": ["A) \( E = \\frac{F}{q} \)", "B) \( E = \\frac{q}{r^2} \)", "C) \( E = \\frac{V}{r} \)", "D) \( E = F \cdot R \)"],
      "correctAnswer": "A) \( E = \\frac{F}{q} \)"
    },
  ],
   "Physic lab":  [
    {
      "question": "What is the primary purpose of an experiment in physics?",
      "options": ["A) To prove a hypothesis", "B) To test a hypothesis", "C) To observe nature", "D) To collect data"],
      "correctAnswer": "B) To test a hypothesis"
    },
    {
      "question": "Which of the following is a common unit for measuring force?",
      "options": ["A) Newton", "B) Joule", "C) Watt", "D) Volt"],
      "correctAnswer": "A) Newton"
    },
    {
      "question": "What is measured using a vernier caliper?",
      "options": ["A) Time", "B) Length", "C) Voltage", "D) Temperature"],
      "correctAnswer": "B) Length"
    },
    {
      "question": "Which instrument is used to measure current in a circuit?",
      "options": ["A) Ammeter", "B) Voltmeter", "C) Thermometer", "D) Ohmmeter"],
      "correctAnswer": "A) Ammeter"
    },
    {
      "question": "What is the primary objective of a projectile motion experiment?",
      "options": ["A) To determine the gravitational force", "B) To study the relationship between angle and range", "C) To measure velocity", "D) To observe energy loss"],
      "correctAnswer": "B) To study the relationship between angle and range"
    },
    {
      "question": "In an ideal gas experiment, what is assumed about the gas molecules?",
      "options": ["A) They occupy space", "B) They have a mass", "C) They do not interact with each other", "D) They have a charge"],
      "correctAnswer": "C) They do not interact with each other"
    },
    {
      "question": "What is the unit of electric current?",
      "options": ["A) Ampere", "B) Volt", "C) Ohm", "D) Joule"],
      "correctAnswer": "A) Ampere"
    },
    {
      "question": "Which device is used to measure the voltage across a component in a circuit?",
      "options": ["A) Voltmeter", "B) Ammeter", "C) Thermometer", "D) Wattmeter"],
      "correctAnswer": "A) Voltmeter"
    },
    {
      "question": "In a pendulum experiment, what variable affects the period of oscillation?",
      "options": ["A) Length of the string", "B) Mass of the bob", "C) Initial velocity", "D) Angle of release"],
      "correctAnswer": "A) Length of the string"
    },
    {
      "question": "Which of the following is not a scalar quantity?",
      "options": ["A) Time", "B) Speed", "C) Temperature", "D) Velocity"],
      "correctAnswer": "D) Velocity"
    },
  ],
   "Electric lab": [
    {
      "question": "What is the primary function of a resistor in an electrical circuit?",
      "options": ["A) To store energy", "B) To control the current", "C) To convert electrical energy into light", "D) To measure voltage"],
      "correctAnswer": "B) To control the current"
    },
    {
      "question": "In Ohm's Law, what does \( V = IR \) represent?",
      "options": ["A) Voltage, current, and resistance", "B) Voltage and power", "C) Current and energy", "D) Resistance and power"],
      "correctAnswer": "A) Voltage, current, and resistance"
    },
    {
      "question": "What is the unit of capacitance?",
      "options": ["A) Farad", "B) Coulomb", "C) Volt", "D) Ohm"],
      "correctAnswer": "A) Farad"
    },
    {
      "question": "What type of energy is stored in a capacitor?",
      "options": ["A) Kinetic energy", "B) Chemical energy", "C) Electrical energy", "D) Heat energy"],
      "correctAnswer": "C) Electrical energy"
    },
    {
      "question": "What is the primary purpose of a fuse in a circuit?",
      "options": ["A) To increase voltage", "B) To limit current", "C) To store electrical energy", "D) To protect against short circuits"],
      "correctAnswer": "D) To protect against short circuits"
    },
    {
      "question": "Which of the following is used to measure resistance?",
      "options": ["A) Ammeter", "B) Voltmeter", "C) Ohmmeter", "D) Thermometer"],
      "correctAnswer": "C) Ohmmeter"
    },
    {
      "question": "What happens when two resistors are connected in parallel?",
      "options": ["A) The total resistance increases", "B) The total resistance decreases", "C) The total current increases", "D) The voltage across each resistor is the same"],
      "correctAnswer": "B) The total resistance decreases"
    },
    {
      "question": "What is the relationship between power, current, and voltage?",
      "options": ["A) \( P = IV \)", "B) \( P = V^2 / R \)", "C) \( P = I^2 R \)", "D) All of the above"],
      "correctAnswer": "D) All of the above"
    },
    {
      "question": "What is the function of a multimeter?",
      "options": ["A) To measure voltage", "B) To measure current", "C) To measure resistance", "D) All of the above"],
      "correctAnswer": "D) All of the above"
    },
    {
      "question": "What is the formula for the energy stored in a capacitor?",
      "options": ["A) \( E = \frac{1}{2} C V^2 \)", "B) \( E = \frac{1}{2} m v^2 \)", "C) \( E = I R^2 \)", "D) \( E = \frac{1}{2} R V^2 \)"],
      "correctAnswer": "A) \( E = \frac{1}{2} C V^2 \)"
    },
  ],
  
};


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.courseName),
        backgroundColor: Colors.blueAccent,
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          Text(
            'Course Contents',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 16),
          for (var content in widget.contents)
            ListTile(
              title: Text(content, style: TextStyle(fontSize: 18)),
            ),
          SizedBox(height: 20),
          Text(
            'Video Contents',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildVideoThumbnail(),
              _buildVideoThumbnail(),
            ],
          ),
          SizedBox(height: 20),
          // Button to toggle the visibility of example questions
          ElevatedButton(
            onPressed: () {
              setState(() {
                _showQuestions = !_showQuestions;
              });
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blueAccent, // Button color
              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
            ),
            child: Text(
              _showQuestions ? "Hide Example Questions" : "Show Example Questions",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 20),
          // Show example questions if _showQuestions is true
          if (_showQuestions && courseQuestions[widget.courseName] != null)
            for (var question in courseQuestions[widget.courseName]!)
              _buildQuestionCard(question),
        ],
      ),
    );
  }

  Widget _buildVideoThumbnail() {
    return Container(
      width: 150,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: Icon(
          Icons.play_circle_fill,
          size: 50,
          color: Colors.red,
        ),
      ),
    );
  }

  Widget _buildQuestionCard(Map<String, dynamic> question) {
    return Card(
      elevation: 5,
      margin: EdgeInsets.symmetric(vertical: 8.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              question["question"],
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            for (var option in question["options"])
              _buildOptionRow(option, question["correctAnswer"]),
          ],
        ),
      ),
    );
  }

  Widget _buildOptionRow(String option, String correctAnswer) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: ElevatedButton(
        onPressed: () {
          setState(() {
            _selectedAnswers[option] = option;
          });
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: _getOptionColor(option, correctAnswer),
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
          elevation: 0,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
        child: Text(
          option,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }

  Color _getOptionColor(String option, String correctAnswer) {
    if (_selectedAnswers.containsKey(option)) {
      return option == correctAnswer ? Colors.green : Colors.red;
    }
    return Colors.blueAccent;
  }
}

