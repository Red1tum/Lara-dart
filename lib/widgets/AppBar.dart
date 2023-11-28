import 'package:flutter/material.dart';
import 'package:lara/data/User.dart';
import 'package:lara/resources/Strings.dart';
import 'package:lara/theme/Colors.dart';
import 'package:lara/theme/Sizes.dart';
import 'package:lara/theme/TextStyles.dart';

class Appbar extends StatelessWidget {
  const Appbar({super.key, required this.tabController, required this.user});

  final User user;
  
  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      floating: false,
      expandedHeight: Sizes.appBarExpandedHeight,
      actions: [
        IconButton(
          icon: const Icon(Icons.logout),
          onPressed: () {},
        )
      ],
      leading: IconButton(
        icon: const Icon(Icons.close),
        onPressed: () {},
      ),
      titleTextStyle: TextStyles.primary(Sizes.regular),
      bottom: TabBar(
        controller: tabController,
        indicatorSize: TabBarIndicatorSize.tab,
        tabs: <Widget>[
          Tab(
            child: Text(
              Strings.profile,
            ),
          ),
          Tab(
            child: Text(
              Strings.settings,
            ),
          ),
        ],
      ),
      flexibleSpace: FlexibleSpaceBar(
        collapseMode: CollapseMode.pin,
        background: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: Sizes.profileImageWidth,
                  height: Sizes.profileImageHeight,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(Sizes.profileImageRadius),
                    ),
                    shadows: [
                      BoxShadow(
                        color: AppColor.profileShadow,
                        blurRadius: 24,
                        offset: const Offset(0, 16),
                        spreadRadius: -16,
                      )
                    ],
                  ),
                  child: Image.asset(user.imageName),
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(user.name,
                    textAlign: TextAlign.center,
                    style: TextStyles.primaryBold(Sizes.largeHeader)
                ),
                const SizedBox(
                  height: 10,
                ),
              ]
          ),
        ),
      ),
    );
  }
}
