import 'package:flutter/material.dart';
import 'package:github_portfolio/models/custom_launch_url.dart';

Widget PlayStoreButton(String? playStoreUrl,double width) {
  return GestureDetector(
    onTap: (){
      CustomLaunchUrl.customLaunchUrl(playStoreUrl!);
    },
    child: MouseRegion(
      cursor: SystemMouseCursors.click,
      child: Image.asset("assets/play_store.png",width: width),
    ),
  );
}