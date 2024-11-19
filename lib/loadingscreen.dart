import 'package:flutter/material.dart';
import 'package:myapp/myprofile.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    // Simulate a delay before navigating to the Profile page
    Future.delayed( const Duration(seconds: 10), () {
      // ignore: avoid_print
      print("Navigating to Profile Page");
      Navigator.pushReplacement(
       // ignore: use_build_context_synchronously
       context,
        MaterialPageRoute(builder: (context) => const Profile()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: const Color.fromARGB(255, 242, 234, 234),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/background.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(


            color: Colors.black.withOpacity(0.5), // Semi-transparent background
            child: const Center(
              child: SpinkitGrid(), // Spinner
            ),
          ),
        ],
      ),
    );
  }
}



// Spinner or Loader

class SpinkitGrid extends StatelessWidget {
  const SpinkitGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return const SpinKitPulsingGrid(
      color: Colors.green, // Set the color of the pulsing grid
      size: 100.0, // Adjust the size of the grid as needed
    );
  }
}