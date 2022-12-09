import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_portfolio/models/global_variables.dart';
import '../../models/project.dart';


final homePageProvider = ChangeNotifierProvider<HomePageController>((ref){
  return HomePageController();
});

class HomePageController extends ChangeNotifier {
  bool showHover = false;

  List<Project> projects = [
    Project(
        name: "GitHub Portfolio",
        assetName: "assets/treejeig.jpg",
        browseCodeLink: thisProjectRepoLink,
        showLiveDemoButton: false
    ),
    Project(
        name: "AeroClock",
        assetName: "assets/aero-clock-icon-1024.png",
        playStoreLink: "https://play.google.com/store/apps/details?id=com.sftech.aeroclock",
        browseCodeLink: "https://github.com/treejeig/AeroClock",
        liveDemoLink: "https://treejeig.github.io/aeroclock/",
        showPlayStoreButton: true
    ),
    Project(
        name: "ListGen",
        assetName: "assets/listgen-icon-1024.png",
        browseCodeLink: "https://github.com/treejeig/ListGen",
        liveDemoLink: "https://treejeig.github.io/listgen/"
    ),
  ];

  changeShowHover(bool value){
    showHover = value;
    notifyListeners();
  }
}