import 'package:flutter/material.dart';
import 'package:github_portfolio/modules/home/widgets/project_card/widgets/go_to_link_button.dart';
import '../../../../../models/global_variables.dart';

Widget ProjectDetails(String projectName, double buttonsWidth,{String? browseCodeLink, String? liveDemoLink}){
  return Center(
    child: Column(
      children: [
        Container(
            padding: EdgeInsets.all(padding),
            child: Text(projectName,style: TextStyle(fontSize:padding*2))),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GoToLinkButton(browseCodeLink, "Browse Code", buttonsWidth),
              Divider(thickness: padding,color: Colors.transparent,),
              GoToLinkButton(liveDemoLink, "Live Demo", buttonsWidth),
            ],
          ),
        ),
      ],
    ),
  );
}