import 'package:flutter/material.dart';

import '../data/Subscription.dart';

class SubscriptionCard extends StatelessWidget {
  const SubscriptionCard({super.key, required this.subscription});

  final Subscription subscription;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 8),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              fixedSize: const Size(216, 130),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              )),
          onPressed: () {},
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset(subscription.imageName, width: 36, height: 36),
                    const SizedBox(
                      width: 13,
                    ),
                    Text(
                      subscription.name,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        //height: 0.08,
                        letterSpacing: -0.40,
                      ),
                    )
                  ],
                ),
                Expanded(child: Container()),
                Text(
                  'Платёж ${subscription.nextPaymentDate}',
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    //height: 0.09,
                    letterSpacing: -0.41,
                  ),
                ),
                Text(
                  '${subscription.perMonthPayment.toInt()}₽ в месяц',
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.550000011920929),
                    fontSize: 14,
                    //fontFamily: 'SF Pro Text',
                    fontWeight: FontWeight.w500,
                    //height: 0.09,
                    letterSpacing: -0.41,
                  ),
                )
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
    return Container(
        width: double.infinity,
        //padding: const EdgeInsets.only(right: 0),
        height: 130,
        child: ListView.builder(
            //padding: EdgeInsets.all(17),
            scrollDirection: Axis.horizontal,
            itemCount: subscriptions.length,
            itemBuilder: (ctx, index) {
              return SubscriptionCard(subscription: subscriptions[index]);
            }));
  }
}
