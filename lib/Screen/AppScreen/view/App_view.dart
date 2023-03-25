import 'package:cupertino_list_tile/cupertino_list_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/App_Provider.dart';


class Appscreen extends StatefulWidget {
  const Appscreen({Key? key}) : super(key: key);

  @override
  State<Appscreen> createState() => _AppscreenState();
}

class _AppscreenState extends State<Appscreen> {
  App_provider? AT, AF;

  @override
  Widget build(BuildContext context) {
    AT = Provider.of<App_provider>(context, listen: true);
    AF = Provider.of<App_provider>(context, listen: false);
    return SafeArea(
      child: CupertinoPageScaffold(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text("Games", style: TextStyle(color: Colors.black,
                      letterSpacing: 1,
                      fontSize: 25,
                      fontWeight: FontWeight.bold)),
                  Spacer(),
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage("assets/images/unnamed(1).png"),
                  ),
                  SizedBox(width: 10,),
                ],
              ),
              SizedBox(height: 4,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("NEW GAME",
                    style: TextStyle(color: Colors.blue, fontSize: 11)),
              ),
              Text("Warmer Aos Realm war", style: TextStyle(
                  color: Colors.black, fontSize: 15, letterSpacing: 0)),
              Text("Complete in thrilling battles", style: TextStyle(
                  color: Colors.grey, fontSize: 13, letterSpacing: 0)),
              SizedBox(height: 5,),
              Container(
                height: 180,
                width: double.infinity,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ClipRRect(borderRadius: BorderRadius.circular(10),
                    child: Image.asset("assets/images/big.png", fit: BoxFit.cover)),
              ),
              SizedBox(height: 8,),
              CupertinoListTile(title: Text("Discover More game",
                style: TextStyle(color: Colors.black,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                    fontSize: 20),),
                  trailing: Text("See all",
                    style: TextStyle(fontSize: 12, color: Colors.blue),)),
              Expanded(
                child: Container(
                  child: ListView.builder(itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(4),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 90,
                            width: 90,
                            decoration: BoxDecoration(color: Colors.grey,
                                borderRadius: BorderRadius.circular(20)),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset("${AF!.gameImg1[index]}",
                                    fit: BoxFit.cover)),
                          ),
                          SizedBox(width: 10,),
                          Row(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 15,),
                                  Text("${AF!.gameName1[index]}",
                                    style: TextStyle(color: Colors.black,
                                        fontSize: 18,
                                        letterSpacing: 1),),
                                  Text("Astar Game Devloper.", style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 12,
                                      letterSpacing: 1),),
                                  SizedBox(height: 10,),
                                ],
                              ),
                              SizedBox(width: 20,),
                              Container(
                                height: 30,
                                width: 50,
                                decoration: BoxDecoration(
                                    color: Colors.blue.shade50,
                                    borderRadius: BorderRadius.circular(40),
                                    border: Border.all(color: Colors.blue)
                                ),
                                alignment: Alignment.center,
                                child: Text("GET", style: TextStyle(
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
                    itemCount: AF!.gameImg1.length,
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
