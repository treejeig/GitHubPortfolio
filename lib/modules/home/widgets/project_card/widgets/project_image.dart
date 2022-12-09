import 'package:flutter/material.dart';
import 'package:github_portfolio/models/global_variables.dart';

Widget ProjectImage(String? projectImageAsset){
  bool hasIcon = (projectImageAsset!=null);
  return hasIcon ? Image.asset(projectImageAsset, fit: BoxFit.cover,) : noImageWidget();
}

Widget noImageWidget(){
  return Container(
    color:Colors.cyanAccent,
    child: Center(
        child: Text(appIconPreparing,style: TextStyle(fontSize:36),textAlign: TextAlign.center,
        )
    ),
  );
}