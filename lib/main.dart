
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Screen/AppScreen/provider/App_Provider.dart';
import 'Screen/AppStore/navigationprovider.dart';
import 'Screen/AppStore/navigationview.dart';
import 'Screen/GamesScreen/provider/Games_Provider.dart';


void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => App_provider(),
        ),
        ChangeNotifierProvider(
           create: (context) => Game_provider(),
         ),
         ChangeNotifierProvider(
           create: (context) => Navigation_Provider(),
         ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
           '/': (context) => Navigation_Bar(),
         // '/': (context) => Basescreen(),
        },
      ),
    ),
  );
}
