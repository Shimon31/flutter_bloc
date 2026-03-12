import 'package:bloc_practice/config/components/loading_widget.dart';
import 'package:bloc_practice/config/components/round_button.dart';
import 'package:bloc_practice/config/routes/routes_name.dart';
import 'package:bloc_practice/views/home/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            RoundButton(title: "Login", onPress: () {}),
            Center(
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, RoutesName.homeScreen);
                },
                child: Text("Home"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
