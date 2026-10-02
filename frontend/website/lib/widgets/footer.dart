import 'package:flutter/material.dart';
import '../theme.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        horizontal: 60,
        vertical: 40,
      ),
      color: Colors.black,
      child: const Column(
        children: [
          Text(
            'FOURAM LABS',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),

          SizedBox(height: 15),

          Text(
            'Engineering the Future of Electronics Design',
            style: TextStyle(
              color: FouramLabsTheme.textSecondary,
            ),
          ),

          SizedBox(height: 25),

          Text(
            '© 2026 Fouram Labs Private Limited. All rights reserved.',
            style: TextStyle(
              color: FouramLabsTheme.textSecondary,
              fontSize: 13,
            ),
          ),
        ],
      ),
    );
  }
}