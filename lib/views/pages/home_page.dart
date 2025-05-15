import 'package:flutter/material.dart';
import 'package:flutter_app/views/widgets/container_widget.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Lottie.asset('assets/lotties/home.json',height: 300),
            ContainerWidget(title: 'Basic Layout', description: 'This is a description',),
            ContainerWidget(title: 'Basic Layout', description: 'This is a description',),
            ContainerWidget(title: 'Basic Layout', description: 'This is a description',),
            ContainerWidget(title: 'Basic Layout', description: 'This is a description',),
            ContainerWidget(title: 'Basic Layout', description: 'This is a description',),
            ContainerWidget(title: 'Basic Layout', description: 'This is a description',),
          ],
        ),
      ),
    );
  }
}
