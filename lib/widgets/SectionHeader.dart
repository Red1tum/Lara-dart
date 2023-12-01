import 'package:flutter/material.dart';

import '../theme/Sizes.dart';

class SectionHeader extends StatelessWidget {
  const SectionHeader({super.key, required this.title, required this.subtitle});
  
  final String title;
  final String subtitle;
  
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: Theme.of(context).textTheme.headlineSmall),
        const SizedBox(height: Sizes.sectionPadding),
        Text(subtitle, style: Theme.of(context).textTheme.bodySmall)
      ],
    );
  }
}