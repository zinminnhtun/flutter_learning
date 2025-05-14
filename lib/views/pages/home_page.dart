import 'package:flutter/material.dart';
import 'package:flutter_app/data/constants.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Lottie.asset('assets/lotties/home.json',height: 300),

            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 10.0),
              child: Card(
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Basic Layout',
                        style: KTextStyles.titleTealText,
                      ),
                      Text('This is a basic layout of the app',
                          style: KTextStyles.descriptionText),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
