import 'package:agrimarapp/screens/login_screen.dart';
import 'package:agrimarapp/screens/signup_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoadingScreen(),
    );
  }
}

 class LoadingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  const Color(0xFFE8FEE6),
      body: Stack(
        children: [
          // Image en arrière-plan
          Positioned.fill(
            child: Image.asset(
              'assets/images/LandingScreenBackground.png',
              fit: BoxFit.cover,
            ),
          ),
          // Contenu principal avec séparation diagonale
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start, // Aligner les enfants à gauche
            children: [
              // Zone diagonale contenant le texte
              CustomPaint(
                size: const Size(double.infinity, 180),
                child: Container(
                  padding: const EdgeInsets.only(left: 20, bottom: 20), // Espace à gauche et en bas
                  child: Text(
                    'Take care of your\nPlants', // Texte sur deux lignes
                    textAlign: TextAlign.right, // Aligner le texte à gauche
                    style: TextStyle(
                      color: const Color.fromARGB(255, 61, 61, 61),
                      fontSize: 26, // Taille ajustée
                      fontWeight: FontWeight.bold,
                      shadows: [
                        Shadow(
                          blurRadius: 3.0,
                          color: Colors.grey.shade500, // Ombre
                          offset: const Offset(2, 2),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              // Boutons empilés verticalement
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                child: Column(
                  children: [
                    // Bouton Login
                    ElevatedButton(
                      onPressed: () {
                         // Naviguer vers la page Login
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const LoginScreen()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF16890C),
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        minimumSize: const Size(double.infinity, 50),
                      ),
                      child: const Text('Log in', style: TextStyle(fontSize: 18)),
                    ),
                    const SizedBox(height: 15),
                    // Bouton Sign Up
                    ElevatedButton(
                      onPressed: () {
                         // Naviguer vers la page SignUP
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const RegisterScreen()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor:  const Color(0xFF16890C),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        side: const BorderSide(color: Color(0xFF16890C), width: 2),
                        minimumSize: const Size(double.infinity, 50),
                      ),
                      child: const Text('Sign Up', style: TextStyle(fontSize: 18)),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),
            ],
          ),
        ],
      ),
    );
  }
}
