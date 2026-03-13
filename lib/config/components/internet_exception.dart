import 'package:bloc_practice/config/components/round_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InternetException extends StatelessWidget {

  final VoidCallback onpress;

  const InternetException({super.key, required this.onpress});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 50),
        const Icon(Icons.cloud_off, color: Colors.red, size: 60),

        Padding(
          padding: EdgeInsetsGeometry.only(top: 30),
          child: Center(
            child: Text(
              "We're unable yo show the results.\nPlease check your Internet \nConnection",
              textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .displayMedium!
                .copyWith(fontSize: 20)
            ),
          ),
        ),

        RoundButton(title: "Retry", onPress: (){}, height: 30)
      ],
    );
  }
}
