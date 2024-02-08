import 'package:flutter/material.dart';

import 'home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Omotoso Oooreoluwa',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        textTheme: const TextTheme(
           titleLarge: TextStyle(
            fontFamily: 'Inder'
           )
        )
      ),
      home: const HomePage(),
    );
  }
}
