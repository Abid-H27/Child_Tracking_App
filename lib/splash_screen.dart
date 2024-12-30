import 'package:child_tracking_app/LoginSignup/Login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  // Navigate to home screen after a delay
  _navigateToHome() async {
    await Future.delayed(Duration(seconds: 3),(){
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context)=>LoginScreen()),
      );
    }); // Show splash screen for 3 seconds
     // Replace with the route to your home screen
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue, // Customize splash background color
      body: Center(
        child: Image.asset('assets/splash_screen_new.png'), // Splash screen image
      ),
    );
  }
}
