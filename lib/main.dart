import 'package:drag_and_drop/screens/columns_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ColumnsScreen(),
      theme: ThemeData.dark(useMaterial3: true),
    );
  }
}
