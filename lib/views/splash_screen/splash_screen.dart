import 'package:bloc_practice/config/components/internet_exception.dart';
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
            RoundButton(
              height: 50,
              title: "Login",
              onPress: () {
                Navigator.pushNamed(context, RoutesName.loginScreen);
              },
            ),
            SizedBox(height: 30),
            RoundButton(
              height: 50,
              title: "Home",
              onPress: () {
                Navigator.pushNamed(context, RoutesName.homeScreen);
              },
            ),

            SizedBox(height: 50),
            Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InternetException(onpress: () {}),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
