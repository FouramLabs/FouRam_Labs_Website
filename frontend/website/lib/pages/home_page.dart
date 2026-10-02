import 'package:flutter/material.dart';

import '../theme.dart';
import '../widgets/navbar.dart';
import '../widgets/footer.dart';
import '../widgets/buttons.dart';
import '../widgets/cards.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Navbar(),

          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  _heroSection(),
                  _volturaSection(),
                  _technologySection(),
                  _companySection(),
                  _ctaSection(),
                  const Footer(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _heroSection() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        horizontal: 80,
        vertical: 120,
      ),
      child: Column(
        children: [
          const Text(
            'ENGINEERING THE FUTURE',
            style: TextStyle(
              color: FouramLabsTheme.primary,
              fontSize: 14,
              fontWeight: FontWeight.bold,
              letterSpacing: 3,
            ),
          ),

          const SizedBox(height: 25),

          const Text(
            'Engineering the Future\nof Electronics Design',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 58,
              height: 1.1,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 25),

          const SizedBox(
            width: 700,
            child: Text(
              'Fouram Labs develops innovative engineering '
              'software and technologies for the next generation '
              'of electronics design.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: FouramLabsTheme.textSecondary,
                fontSize: 18,
                height: 1.6,
              ),
            ),
          ),

          const SizedBox(height: 40),

          PrimaryButton(
            text: 'Explore Voltura ECAD',
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  Widget _volturaSection() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        horizontal: 80,
        vertical: 100,
      ),
      color: FouramLabsTheme.surface,
      child: Column(
        children: [
          const Text(
            'OUR FLAGSHIP PRODUCT',
            style: TextStyle(
              color: FouramLabsTheme.primary,
              fontWeight: FontWeight.bold,
              letterSpacing: 2,
            ),
          ),

          const SizedBox(height: 15),

          const Text(
            'Voltura ECAD',
            style: TextStyle(
              fontSize: 42,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 20),

          const Text(
            'A modern electronics design platform '
            'being developed by Fouram Labs.',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: FouramLabsTheme.textSecondary,
              fontSize: 18,
            ),
          ),

          const SizedBox(height: 45),

          Container(
            height: 300,
            width: 1000,
            decoration: BoxDecoration(
              color: const Color(0xFF11161D),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: FouramLabsTheme.border,
              ),
            ),
            child: const Center(
              child: Text(
                'VOLTURA ECAD\nSCREENSHOT',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: FouramLabsTheme.textSecondary,
                  fontSize: 22,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _technologySection() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        horizontal: 60,
        vertical: 100,
      ),
      child: Column(
        children: [
          const Text(
            'TECHNOLOGY',
            style: TextStyle(
              color: FouramLabsTheme.primary,
              fontWeight: FontWeight.bold,
              letterSpacing: 2,
            ),
          ),

          const SizedBox(height: 15),

          const Text(
            'Built for Modern Engineering',
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 45),

          Wrap(
            spacing: 20,
            runSpacing: 20,
            alignment: WrapAlignment.center,
            children: const [
              FeatureCard(
                title: 'Electronics Design',
                description:
                    'Tools designed for modern electronics '
                    'and PCB design workflows.',
                icon: Icons.memory,
              ),
              FeatureCard(
                title: 'Engineering Software',
                description:
                    'Modern software architecture for '
                    'engineering applications.',
                icon: Icons.developer_mode,
              ),
              FeatureCard(
                title: 'Innovation',
                description:
                    'Building technology for the next '
                    'generation of electronics engineering.',
                icon: Icons.lightbulb_outline,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _companySection() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        horizontal: 80,
        vertical: 100,
      ),
      color: FouramLabsTheme.surface,
      child: const Column(
        children: [
          Text(
            'FOURAM LABS',
            style: TextStyle(
              color: FouramLabsTheme.primary,
              fontWeight: FontWeight.bold,
              letterSpacing: 2,
            ),
          ),

          SizedBox(height: 20),

          Text(
            'Building the Future of Electronics Engineering',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget _ctaSection() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        horizontal: 40,
        vertical: 100,
      ),
      child: Column(
        children: [
          const Text(
            'Ready to explore Voltura?',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 38,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 25),

          PrimaryButton(
            text: 'Request a Demo',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}