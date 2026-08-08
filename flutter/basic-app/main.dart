import 'package:flutter/material.dart';


// application entry point
void main() {
  runApp(const MyApp());
}


// root widget for the application
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      // removes the debug banner from the top corner
      debugShowCheckedModeBanner: false,

      // application title used by some platforms
      title: 'flutter app',

      // defines the starting screen of the application
      home: const HomePage(),
    );
  }
}


// basic screen that does not currently store changing state
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // standard top bar for the screen
      appBar: AppBar(
        title: const Text('page title'),
      ),

      // main visible content of the screen
      body: const Center(
        child: Text('page content'),
      ),
    );
  }
}