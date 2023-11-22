import 'package:flutter/material.dart';

import '../data/RatesAndLimits.dart';

class RatesAndLimitsItem extends StatelessWidget {
  const RatesAndLimitsItem({super.key, required this.item});

  final RatesAndLimits item;

  @override
  Widget build(BuildContext context) {
    // I think there's an issue with paddings
    // TODO: fix paddings
    return Padding(
        padding: EdgeInsets.only(right: 8),
        child: GestureDetector(
            onTap: () {},
            child: Row(
              children: [
                Image.asset(
                  item.imageName,
                  width: 36,
                  height: 36,
                ),
                const SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (item.subtitle != null) ...[
                      Text(
                        item.title,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          //height: 0.08,
                          letterSpacing: -0.40,
                        ),
                      ),
                      Text(
                        item.subtitle!,
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.550000011920929),
                          fontSize: 14,
                          fontFamily: 'SF Pro Text',
                          fontWeight: FontWeight.w500,
                          //height: 0.09,
                          letterSpacing: -0.41,
                        ),
                      )
                    ] else ...[
                      Center(
                        child: Text(
                          item.title,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            //height: 0.08,
                            letterSpacing: -0.40,
                          ),
                        ),
                      )
                    ]
                  ],
                ),
                const Spacer(),
                IconButton(
                    onPressed: () {}, icon: Image.asset("assets/images/arrow_right.webp")
                )
              ],
            )));
  }
}

class RatesAndLimitsList extends StatelessWidget {
  const RatesAndLimitsList({super.key, required this.list});

  final List<RatesAndLimits> list;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Тарифы и лимиты',
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
              'Для операций в Сбербанк Онлайн',
              style: TextStyle(
                color: Colors.black.withOpacity(0.550000011920929),
                fontSize: 14,
                fontWeight: FontWeight.w500,
                //height: 0.09,
                letterSpacing: -0.42,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            for (var (index, item) in list.indexed)
              if (index != list.length - 1) ...[
                RatesAndLimitsItem(item: item),
                const Divider(
                  height: 10,
                  thickness: 1.5,
                  indent: 50,
                )
              ] else
                RatesAndLimitsItem(item: item)
          ],
        ));
  }
}
