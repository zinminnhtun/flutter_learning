import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// material app(Stateful)
// scaffold
// App title
// bottom navigation bar set state

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyappState();
}

class _MyappState extends State<MyApp> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal,brightness: Brightness.dark),
      ),
      home: Scaffold(
        appBar: AppBar(title: Text("Flutter Map"),),
        bottomNavigationBar: NavigationBar(
          destinations: [
            NavigationDestination(icon: Icon(Icons.home), label: "Home"),
            NavigationDestination(icon: Icon(Icons.person), label: "Profile"),
          ],
          onDestinationSelected: (int value){
            setState(() {
              selectedIndex = value;
            });
          } ,
          selectedIndex: selectedIndex,
        ),
      ),
    );
  }
}
