import 'package:flutter/material.dart';
import 'package:lara/resources/Images.dart';
import 'package:lara/resources/Strings.dart';
import 'package:lara/theme/Colors.dart';
import 'package:lara/theme/Sizes.dart';
import 'package:lara/theme/TextStyles.dart';
import 'package:lara/widgets/SectionHeader.dart';

import '../data/RatesAndLimits.dart';

class RatesAndLimitsItem extends StatelessWidget {
  const RatesAndLimitsItem({super.key, required this.item});

  final RatesAndLimits item;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: Sizes.rightPadding),
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
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (item.subtitle != null) ...[
                      Text(item.title, style: TextStyles.primary(Sizes.regular)),
                      Text(item.subtitle!, style: TextStyles.secondary(Sizes.small))
                    ] else ...[
                      Center(
                        child: Text(item.title, style: TextStyles.primary(Sizes.regular)),
                      )
                    ]
                  ],
                ),
                const Spacer(),
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
        padding: EdgeInsets.only(left: Sizes.leftPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SectionHeader(title: Strings.ratesAndLimits, subtitle: Strings.ratesAndLimitsDescription),
            const SizedBox(
              height: 12,
            ),
            for (var (index, item) in list.indexed)
              if (index != list.length - 1) ...[
                RatesAndLimitsItem(item: item),
                Divider(
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
