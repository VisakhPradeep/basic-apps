import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gulf Rock Medical',
      theme: ThemeData(
        primarySwatch: Colors.green, // Green color scheme
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gulf Rock Medical'),
        backgroundColor: Colors.green[700], // Deeper green
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.green.shade100, Colors.white],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Welcome to Gulf Rock Medical',
                style: TextStyle(
                  fontSize: 30, // Larger font size
                  fontWeight: FontWeight.bold,
                  color: Colors.green[700],
                  shadows: [
                    Shadow(
                      blurRadius: 15,
                      color: Colors.black26,
                      offset: Offset(0, 5),
                    ),
                  ],
                ),
                textAlign: TextAlign.center, // Centered text
              ),
              SizedBox(height: 40),
              _buildElevatedButton('About Us', AboutUsPage(), context),
              SizedBox(height: 20),
              _buildElevatedButton('Services', ServicesPage(), context),
              SizedBox(height: 20),
              _buildElevatedButton('Contact Us', ContactUsPage(), context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildElevatedButton(String text, Widget page, BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.green[700], // Green color for buttons
        padding:
            EdgeInsets.symmetric(horizontal: 40, vertical: 20), // More padding
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        elevation: 6,
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      },
      child: Text(
        text,
        style: TextStyle(fontSize: 20, color: Colors.white),
      ),
    );
  }
}

class AboutUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Us'),
        backgroundColor: Colors.green[700],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Who We Are',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.green[700],
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Gulf Rock Medical is a leading provider of medical services in the Gulf region. Our mission is to provide high-quality, patient-centered care to our community.',
                        style: TextStyle(fontSize: 18),
                      ),
                      Divider(height: 30, thickness: 1),
                      Text(
                        'Our Team',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.green[700],
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Our team of experienced healthcare professionals is dedicated to providing compassionate and personalized care to our patients. We strive to stay up-to-date with the latest medical advancements and technologies to ensure that our patients receive the best possible care.',
                        style: TextStyle(fontSize: 18),
                      ),
                      Divider(height: 30, thickness: 1),
                      Text(
                        'Our Belief',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.green[700],
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'At Gulf Rock Medical, we believe in the importance of preventive care and early detection. We offer a range of services, including routine check-ups, health screenings, and diagnostic testing, to help our patients maintain optimal health.',
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ServicesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Services'),
        backgroundColor: Colors.green[700],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Our Services',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.green[700],
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Gulf Rock Medical offers a wide range of medical services, including:',
                        style: TextStyle(fontSize: 18),
                      ),
                      Divider(height: 30, thickness: 1),
                      Text(
                        '• Primary Care',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Our primary care physicians provide routine check-ups, health screenings, and diagnostic testing to help our patients maintain optimal health.',
                        style: TextStyle(fontSize: 18),
                      ),
                      Divider(height: 30, thickness: 1),
                      Text(
                        '• Specialty Care',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'We offer specialized care in a range of areas, including cardiology, dermatology, gastroenterology, and more.',
                        style: TextStyle(fontSize: 18),
                      ),
                      Divider(height: 30, thickness: 1),
                      Text(
                        '• Diagnostic Testing',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'We offer a range of diagnostic testing services, including lab tests, imaging studies, and more.',
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ContactUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Us'),
        backgroundColor: Colors.green[700],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Get in Touch',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.green[700],
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Feel free to reach out to us through any of the following methods:',
                        style: TextStyle(fontSize: 18),
                      ),
                      Divider(height: 30, thickness: 1),
                      Row(
                        children: [
                          Icon(Icons.phone, color: Colors.green[700]),
                          SizedBox(width: 10),
                          Text(
                            '+966 11 123 4567',
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                      Divider(height: 30, thickness: 1),
                      Row(
                        children: [
                          Icon(Icons.email, color: Colors.green[700]),
                          SizedBox(width: 10),
                          Text(
                            'info@gulfrockmedical.com',
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                      Divider(height: 30, thickness: 1),
                      Text(
                        'Address:',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Gulf Rock Medical, Olaya St, Riyadh, Saudi Arabia',
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
