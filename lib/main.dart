import 'package:flutter/material.dart';
import 'package:flutter_go_router/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        useMaterial3: false,
      ),
      routerConfig: route,
    );
  }
}
