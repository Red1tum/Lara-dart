import 'package:flutter/material.dart';
import 'package:lara/data/DataProvider.dart';
import 'package:lara/widgets/Interests.dart';
import 'package:lara/widgets/RatesAndLimits.dart';
import 'package:lara/widgets/SubscriptionsList.dart';

import '../widgets/AppBar.dart';
import '../widgets/UsersSubscriptions.dart';

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
                    )
                  ];
                },
                body: TabBarView(controller: _tabController, children: [
                  ListView(physics: NeverScrollableScrollPhysics(), children: [
                    const SizedBox(
                      height: 30,
                    ),
                    UsersSubscriptions(
                        subscriptions: dataProvider.getUsersSubscriptions()),
                    const SizedBox(
                      height: 46,
                    ),
                    RatesAndLimitsList(list: dataProvider.getRatesAndLimits()),
                    const SizedBox(
                      height: 34,
                    ),
                    Interests(interestsList: dataProvider.getInterests())
                  ]),
                  const Center(child: CircularProgressIndicator())
                ]))));
  }
}
