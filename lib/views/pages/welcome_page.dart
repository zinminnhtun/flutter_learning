import 'package:flutter/material.dart';
import 'package:flutter_app/data/constants.dart';
import 'package:flutter_app/views/widget_tree.dart';

import 'package:lottie/lottie.dart';


class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,      
          children: [
            Lottie.asset('assets/lotties/lottie1.json'),
            Text("Flutter App",style: TextStyle(fontSize: 50.0,fontWeight: FontWeight.bold,letterSpacing: 50.0),),
            FilledButton(onPressed: (){Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return WidgetTree();
                  },
                ),
              );}, child: Text('Login')),
          ],
        ),
      ),
    );
  }
}