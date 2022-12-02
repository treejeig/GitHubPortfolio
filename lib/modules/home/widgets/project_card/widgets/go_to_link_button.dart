import 'package:flutter/material.dart';
import '../../../../../models/global_variables.dart';
import '../../../../../models/custom_launch_url.dart';

Widget GoToLinkButton(String? goToUrl,String title,double width) {
  final bool enabled = (goToUrl!=null);
  return GestureDetector(
    onTap: (){
      if(enabled){
        CustomLaunchUrl.customLaunchUrl(goToUrl);
      }
    },
    child: MouseRegion(
      cursor: enabled ? SystemMouseCursors.click : SystemMouseCursors.forbidden,
      child: Container(
        width: width,
        padding: EdgeInsets.all(padding),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(padding * 2),
            color: enabled ? Colors.red : Colors.red.withOpacity(0.5)),
        child: Text(title, textAlign: TextAlign.center, style: TextStyle(fontSize: padding)),
      ),
    ),
  );
}