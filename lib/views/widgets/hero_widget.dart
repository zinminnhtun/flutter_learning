import 'package:flutter/material.dart';

class HeroWidget extends StatelessWidget {
  const HeroWidget({super.key, required this.title,this.nextPage});
  final String title;
  final Widget? nextPage;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: nextPage != null ? (){
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return nextPage!;
            },
          ),
        );
      } : null,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Hero(
            tag: "hero1",
            child: AspectRatio(
              aspectRatio: 1920/1080,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  "assets/images/bg.jpeg",
                  color: Colors.teal,
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 300,
                  colorBlendMode: BlendMode.darken,
                ),
              ),
            ),
          ),
      
          FittedBox(
            child: Text(title, style: TextStyle(
              fontSize: 50.0,
              fontWeight: FontWeight.bold,
              letterSpacing: 50.0,
              color: Colors.white30,
            )),
          ),
        ],
      ),
    );
  }
}
