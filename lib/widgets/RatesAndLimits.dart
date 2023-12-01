import 'package:flutter/material.dart';
import 'package:lara/resources/Images.dart';
import 'package:lara/resources/Strings.dart';
import 'package:lara/theme/Colors.dart';
import 'package:lara/theme/Sizes.dart';
import 'package:lara/widgets/SectionHeader.dart';

import '../data/RatesAndLimits.dart';

class RatesAndLimitsItem extends StatelessWidget {
  const RatesAndLimitsItem({super.key, required this.item});

  final RatesAndLimits item;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(right: Sizes.rightPadding),
        child: GestureDetector(
            onTap: () {},
            child: Row(
              children: [
                Image.asset(
                  item.imageName,
                  width: Sizes.iconWidth,
                  height: Sizes.iconHeight,
                ),
                const SizedBox(width: 12),
                Expanded(child:
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (item.subtitle != null)
                        ...[
                          Text(item.title,
                              maxLines: 1,
                              overflow: TextOverflow.clip,
                              style: Theme.of(context).textTheme.titleLarge
                          ), 
                          Text(
                              item.subtitle!,
                              maxLines: 1,
                              overflow: TextOverflow.clip,
                              style: Theme.of(context).textTheme.titleSmall)
                        ]
                    else ...[
                         Text(
                              item.title,
                              maxLines: 2,
                              overflow: TextOverflow.clip,
                              style: Theme.of(context).textTheme.titleLarge),
                    ]
                  ],
                )),
                //const Spacer(),
                IconButton(
                    onPressed: () {},
                    icon: Image.asset(Images.arrowRight)
                )
              ],
            )
        )
    );
  }
}

class RatesAndLimitsList extends StatelessWidget {
  const RatesAndLimitsList({super.key, required this.list});

  final List<RatesAndLimits> list;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: Sizes.leftPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SectionHeader(title: Strings.ratesAndLimits, subtitle: Strings.ratesAndLimitsDescription),
            const SizedBox(
              height: 12,
            ),
            for (var (index, item) in list.indexed)
              if (index != list.length - 1) ...[
                RatesAndLimitsItem(item: item),
                const Divider(
                  height: Sizes.dividerHeight,
                  indent: Sizes.dividerRatesIndent,
                  color: AppColor.divider,
                )
              ] else
                RatesAndLimitsItem(item: item)
          ],
        ));
  }
}
