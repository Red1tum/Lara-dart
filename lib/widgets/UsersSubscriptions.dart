import 'package:flutter/material.dart';
import 'package:lara/data/Subscription.dart';
import 'package:lara/widgets/SubscriptionsList.dart';

class UsersSubscriptions extends StatelessWidget {
  const UsersSubscriptions({super.key, required this.subscriptions});

  final List<Subscription> subscriptions;

  // TODO: resolve issues with padding in rows!
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "У вас подключено",
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
          Text("Подписки, автоплатежи и сервисы на которые вы подписались",
              style: TextStyle(
                color: Colors.black.withOpacity(0.550000011920929),
                fontSize: 14,
                fontWeight: FontWeight.w500,
                //height: 0.09,
                letterSpacing: -0.42,
              )),
          // I LOVE FLUTTER!!!!!!!!!!11111
          // MORE CONST YEAH I WANT IT
          // MORE MANUAL PADDING YEAH I NEED IT
          const SizedBox(height: 20),
          SubscriptionList(subscriptions: subscriptions)
        ],
      ),
    );
  }
}
