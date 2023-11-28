import 'package:flutter/material.dart';
import 'package:lara/theme/Sizes.dart';
import 'package:lara/theme/TextStyles.dart';
import 'package:lara/widgets/SectionHeader.dart';

import '../data/Subscription.dart';
import '../resources/Strings.dart';

class SubscriptionCard extends StatelessWidget {
  const SubscriptionCard({super.key, required this.subscription});

  final Subscription subscription;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: Sizes.subscriptionsPadding),
      child: ElevatedButton(
          onPressed: () {},
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: Sizes.basePadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset(subscription.imageName, width: Sizes.iconWidth, height: Sizes.iconHeight),
                    const SizedBox(width: 13),
                    Text(subscription.name, style: TextStyles.primary(Sizes.regular))
                  ],
                ),
                Expanded(child: Container()),
                Text('Платёж ${subscription.nextPaymentDate}',
                    style: TextStyles.primary(Sizes.small)),
                Text('${subscription.perMonthPayment.toInt()}₽ в месяц',
                    style: TextStyles.secondary(Sizes.small))
              ],
            ),
          )),
    );
  }
}

class SubscriptionList extends StatelessWidget {
  const SubscriptionList({super.key, required this.subscriptions});

  final List<Subscription> subscriptions;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: Sizes.leftPadding),
          child: SectionHeader(title: Strings.activeSubscriptions, subtitle: Strings.activeSubscriptionsDescription),
        ),
        const SizedBox(height: 20),
        SizedBox(
            width: double.infinity,
            height: Sizes.subscriptionListHeight,
            child: Padding(
              padding: EdgeInsets.only(left: Sizes.leftPadding),
              child : ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(bottom: Sizes.subscriptionBottomPadding),
                itemCount: subscriptions.length,
                itemBuilder: (ctx, index) {
                  return SubscriptionCard(subscription: subscriptions[index]);
                })
            )
        ),
        const SizedBox(height: 10)
      ],
    );
  }
}
