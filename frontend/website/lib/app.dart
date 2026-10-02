import 'package:flutter/material.dart';

import 'theme.dart';
import 'pages/home_page.dart';

class FouramLabsApp extends StatelessWidget {
  const FouramLabsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fouram Labs',
      debugShowCheckedModeBanner: false,
      theme: FouramLabsTheme.darkTheme,
      home: const HomePage(),
    );
  }
}