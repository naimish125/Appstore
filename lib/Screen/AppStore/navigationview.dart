
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import 'navigationprovider.dart';

class Navigation_Bar extends StatefulWidget {
  const Navigation_Bar({Key? key}) : super(key: key);

  @override
  State<Navigation_Bar> createState() => _Navigation_BarState();
}

class _Navigation_BarState extends State<Navigation_Bar> {
  Navigation_Provider? NavigationProvidertrue;
  Navigation_Provider? NavigationProviderfalse;

  @override
  Widget build(BuildContext context) {
    NavigationProviderfalse =
        Provider.of<Navigation_Provider>(context, listen: false);
    NavigationProvidertrue =
        Provider.of<Navigation_Provider>(context, listen: true);
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.square_favorites_alt_fill,
            ),
            label: "Today",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.rocket_fill,
            ),
            label: "Games",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.square_stack_3d_up_fill,
            ),
            label: "Apps",
          ),
        ],
      ),
      tabBuilder: (context, index) {
        return CupertinoTabView(
          builder: (context) {
            return Center(
              child: NavigationProviderfalse!.Screen[index],
            );
          },
        );
      },
    );
  }
}
