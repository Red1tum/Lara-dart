import 'package:flutter/material.dart';

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
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            'Интересы',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w700,
              //height: 0.06,
              letterSpacing: -0.70,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            'Мы подбираем истории и предложения по темам, которые вам нравятся',
            style: TextStyle(
              color: Colors.black.withOpacity(0.550000011920929),
              fontSize: 14,
              fontWeight: FontWeight.w500,
              //height: 0.09,
              letterSpacing: -0.42,
            ),
          ),
          const SizedBox(height: 16),
          Wrap(
            spacing: 8,
            //runSpacing: 8,
            children: [
              for (var interestKey in widget.interests.keys)
                FilterChip(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                      side: BorderSide(width: 0, color: Colors.transparent)),
                  backgroundColor:
                      Colors.black.withOpacity(0.07999999821186066),
                  label: Text(interestKey),
                  selected: widget.interests[interestKey]!,
                  onSelected: (bool selected) {
                    setState(() {
                      widget.interests[interestKey] = selected;
                    });
                  },
                )
            ],
          )
        ]));
  }
}
