import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:torch_app/home.dart';
import 'package:torch_controller/torch_controller.dart';

void main() {
  runApp(
    TorchApp(),
    
  );
}

class TorchApp extends StatelessWidget {
  const TorchApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(
        useMaterial3: true
      ),
      home: HomeScreen(),
    );
  }
}
