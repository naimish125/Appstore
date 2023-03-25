
import 'package:flutter/cupertino.dart';

import '../AppScreen/view/App_view.dart';
import '../GamesScreen/view/Games_view.dart';
import '../TodayScreen/Today.dart';
import 'navigationview.dart';

class Navigation_Provider extends ChangeNotifier {
  List Screen = [
    Today_Screen(),
    Appscreen(),
    Gamecreen(),
  ];
}