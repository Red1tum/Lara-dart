import 'package:flutter/cupertino.dart';

import '../theme/Sizes.dart';
import '../theme/TextStyles.dart';

class SectionHeader extends StatelessWidget {
  const SectionHeader({super.key, required this.title, required this.subtitle});
  
  final String title;
  final String subtitle;
  
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: TextStyles.primaryBold(Sizes.regularHeader)),
        SizedBox(height: Sizes.sectionPadding),
        Text(subtitle,
          style: TextStyles.secondary(Sizes.small)
        )
      ],
    );
  }
}