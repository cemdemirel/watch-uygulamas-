import 'package:flutter/material.dart';
import 'package:esports/utils/constants.dart';
import 'package:esports/screens/explore/explore_all.dart';
import 'package:esports/screens/explore/popular_channels.dart';
import 'package:esports/main.dart';

class Explore extends StatefulWidget {
  @override
  _ExploreState createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {

  Widget currentWidgetView;

  @override
  void initState() {
    super.initState();
    switchTo("oyunlar");
  }

  switchTo(String widgetName){
    setState(() {
      switch (widgetName){
        case "oyunlar":
          currentWidgetView = ExploreAll(
            onPress: () {
              switchTo("popüler kanallar");
            }
          );
          break;
        case "popüler kanallar":
          currentWidgetView = PopularChannels(
            onPress: () {
              switchTo("Oyunlar");
            }
          );
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSecondaryColor,
      body: AnimatedSwitcher(
        duration: Duration(milliseconds: 250),
        child: currentWidgetView,
      ),
    );
  }
}