import 'package:cupertino_list_tile/cupertino_list_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../AppScreen/provider/App_Provider.dart';
import '../provider/Games_Provider.dart';

class Gamecreen extends StatefulWidget {
  const Gamecreen({Key? key}) : super(key: key);

  @override
  State<Gamecreen> createState() => _GamecreenState();
}

class _GamecreenState extends State<Gamecreen> {
  Game_provider? AT, AF;

  @override
  Widget build(BuildContext context) {
    AT = Provider.of<Game_provider>(context, listen: true);
    AF = Provider.of<Game_provider>(context, listen: false);
    return SafeArea(
      child: CupertinoPageScaffold(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text("Apps",
                      style: TextStyle(
                          color: Colors.black,
                          letterSpacing: 1,
                          fontSize: 25,
                          fontWeight: FontWeight.bold)),
                  Spacer(),
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage("assets/images/person.png"),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
              SizedBox(
                height: 4,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("NOW WITH SIRI",
                    style: TextStyle(color: Colors.blue, fontSize: 11)),
              ),
              Text("Triplt Travel Planner",
                  style: TextStyle(
                      color: Colors.black, fontSize: 15, letterSpacing: 0)),
              Text("Quickly into Fight Siri",
                  style: TextStyle(
                      color: Colors.grey, fontSize: 13, letterSpacing: 0)),
              SizedBox(
                height: 5,
              ),
              Container(
                height: 180,
                width: double.infinity,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset("assets/images/marvel.jpeg",
                        fit: BoxFit.cover)),
              ),
              SizedBox(
                height: 8,
              ),
              CupertinoListTile(
                  title: Text(
                    "12 Great Apps for iOS",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                        fontSize: 20),
                  ),
                  trailing: Text(
                    "See all",
                    style: TextStyle(fontSize: 12, color: Colors.blue),
                  )),
              Expanded(
                child: Container(
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(4),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 90,
                              width: 90,
                              decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(20)),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.asset("${AF!.gameImg[index]}",
                                      fit: BoxFit.cover)),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Row(
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "${AF!.gameName[index]}",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18,
                                          letterSpacing: 1),
                                    ),
                                    Text(
                                      "5star Apps Devloper.",
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 12,
                                          letterSpacing: 1),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  height: 30,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      color: Colors.blue.shade50,
                                      borderRadius: BorderRadius.circular(40),
                                      border: Border.all(color: Colors.blue)),
                                  alignment: Alignment.center,
                                  child: Text(
                                    "GET",
                                    style: TextStyle(
                                        color: Colors.blue,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                    itemCount: AF!.gameImg.length,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
