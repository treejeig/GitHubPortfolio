import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../models/project.dart';


final homePageProvider = ChangeNotifierProvider<HomePageController>((ref){
  return HomePageController();
});

class HomePageController extends ChangeNotifier {
  bool showHover = false;

  List<Project> projects = [
    Project(
        name: "AeroClock",
        assetName: "assets/aero-clock-icon-1024.png",
        browseCodeLink: "https://github.com/treejeig/AeroClock",
        liveDemoLink: "https://treejeig.github.io/aeroclock/"
    ),
    Project(
        name: "ListGen",
        liveDemoLink: "https://treejeig.github.io/listgen/"
    ),
  ];

  changeShowHover(bool value){
    showHover = value;
    notifyListeners();
  }
}