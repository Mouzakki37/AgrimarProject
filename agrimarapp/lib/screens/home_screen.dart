import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  const Color(0xFFE8FEE6),
      appBar: AppBar(
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Row(
              children: [
                
                Icon(Icons.eco, color: Colors.green), // Mini logo
                SizedBox(width: 8),
                Text(
                  'Hello Safaa!',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ],
            ),
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.notifications, color: Colors.grey),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.settings, color: Colors.grey),
                  onPressed: () {},
                ),
              ],
            )
          ],
        ),
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Column(
                children: [
                  // Call to Action Image
                  Container(
                    
                    padding: const EdgeInsets.all(1),
                    child: Column(
                      children: [
                        Image.asset('assets/images/plant_diagnosis.png', height: 300), // Replace with your image asset
                      
                      ],
                    ),
                  ),
                  const SizedBox(height: 1),
                  // Main Instruction Text
                  const Text(
                    'Turn your phone into a mobile crop doctor in 3 Easy Steps :',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 19),
                  // Step-by-Step Instructions
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      buildStep(
                        context,
                        'Prepare the Plant',
                        'assets/images/step1.png', // Replace with your image
                        'Ensure good lighting\nand a clear view of the plant.',
                      ),
                      buildStep(
                        context,
                        'Take a Photo',
                        'assets/images/step2.png', // Replace with your image
                        'Tap "Scan Now" and capture a clear image of the plant.',
                      ),
                      buildStep(
                        context,
                        'Get Results',
                        'assets/images/step3.png', // Replace with your image
                        'Instantly receive a diagnosis with tips for treatment.',
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  // Call to Action Button
                  ElevatedButton(
                    onPressed: () {
                      // Action when button is pressed
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                    ),
                    child: const Text(
                      'Scan Now',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.nature), label: 'Plants'),
          BottomNavigationBarItem(icon: Icon(Icons.camera_alt), label: 'Scan'),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: 'About'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }

  // Step Widget
  Widget buildStep(BuildContext context, String title, String imagePath, String description) {
    return Column(
      children: [
        Image.asset(imagePath, height: 60), // Replace with your image asset
        const SizedBox(height: 8),
        Text(
          title,
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        Text(
          description,
          style: const TextStyle(fontSize: 12, color: Colors.grey),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
