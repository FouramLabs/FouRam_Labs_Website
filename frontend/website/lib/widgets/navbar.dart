import 'package:flutter/material.dart';
import '../theme.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 76,
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.sizeOf(context).width < 600 ? 20 : 60,
      ),
      decoration: const BoxDecoration(
        color: FouramLabsTheme.background,
        border: Border(
          bottom: BorderSide(
            color: FouramLabsTheme.border,
          ),
        ),
      ),
      child: LayoutBuilder(
        builder: (context, constraints) {
          final isCompact = constraints.maxWidth < 1000;

          return Row(
            children: [
              const Text(
                'FOURAM LABS',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5,
                ),
              ),
              const Spacer(),
              if (isCompact)
                PopupMenuButton<String>(
                  tooltip: 'Open navigation menu',
                  icon: const Icon(Icons.menu),
                  onSelected: (_) {},
                  itemBuilder: (context) => const [
                    PopupMenuItem(value: 'Products', child: Text('Products')),
                    PopupMenuItem(value: 'Technology', child: Text('Technology')),
                    PopupMenuItem(value: 'Resources', child: Text('Resources')),
                    PopupMenuItem(value: 'Company', child: Text('Company')),
                  ],
                )
              else ...[
                _navItem('Products'),
                _navItem('Technology'),
                _navItem('Resources'),
                _navItem('Company'),
                const SizedBox(width: 25),
              ],
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: FouramLabsTheme.primary,
                  foregroundColor: Colors.white,
                ),
                child: const Text('Request Demo'),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _navItem(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: TextButton(
        onPressed: () {},
        child: Text(
          title,
          style: const TextStyle(
            color: Colors.white70,
          ),
        ),
      ),
    );
  }
}