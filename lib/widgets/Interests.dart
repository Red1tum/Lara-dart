import 'package:flutter/material.dart';
import 'package:lara/resources/Strings.dart';
import 'package:lara/theme/Sizes.dart';
import 'package:lara/theme/TextStyles.dart';
import 'package:lara/widgets/SectionHeader.dart';

class Interests extends StatefulWidget {
  Interests({super.key, required List<String> interestsList}) {
    interests = {for (var v in interestsList) v: false};
  }

  late final Map<String, bool> interests;

  @override
  State<Interests> createState() => _Interests();
}

class _Interests extends State<Interests> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: Sizes.basePadding),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SectionHeader(title: Strings.interests, subtitle: Strings.interestsDescription),
              const SizedBox(height: 8),
              Wrap(
                spacing: Sizes.chipSpacing, 
                children: [
                  for (var interestKey in widget.interests.keys)
                    FilterChip(
                      label: Text(interestKey, style: TextStyles.primary(Sizes.small)), 
                      selected: widget.interests[interestKey]!, 
                      onSelected: (bool selected) {
                        setState(() {
                          widget.interests[interestKey] = selected;
                        });
                      },
                    )
                ],
              )
            ]
        )
    );
  }
}
