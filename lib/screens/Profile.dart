import 'package:flutter/material.dart';
import 'package:lara/data/DataProvider.dart';
import 'package:lara/theme/Sizes.dart';
import 'package:lara/widgets/Interests.dart';
import 'package:lara/widgets/RatesAndLimits.dart';
import 'package:lara/widgets/SubscriptionsList.dart';

import '../widgets/AppBar.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreen();
}

class _ProfileScreen extends State<ProfileScreen>
    with TickerProviderStateMixin {
  late TabController _tabController;

  final dataProvider = DataProvider();

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: NestedScrollView(
                headerSliverBuilder: (context, value) {
                  return [
                    Appbar(
                      tabController: _tabController,
                      user: dataProvider.getUser()
                    )
                  ];
                },
                body: TabBarView(
                    controller: _tabController,
                    children: [
                      // Profile page
                      ListView(
                        physics: const NeverScrollableScrollPhysics(),
                        children: [
                          const SizedBox(height: Sizes.elementsPadding),
                          SubscriptionList(
                            subscriptions: dataProvider.getUsersSubscriptions()
                          ),
                          const SizedBox(height: Sizes.elementsPadding),
                          RatesAndLimitsList(list: dataProvider.getRatesAndLimits()),
                          const SizedBox(height: Sizes.elementsPadding),
                          Interests(interestsList: dataProvider.getInterests())
                        ]
                      ),
                      // Settings Page 
                      const Center(child: CircularProgressIndicator())
                    ]
                )
            )
        )
    );
  }
}
