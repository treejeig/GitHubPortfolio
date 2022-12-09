import 'package:flutter/material.dart';
import 'package:github_portfolio/modules/home/widgets/project_card/widgets/go_to_link_button.dart';
import 'package:github_portfolio/modules/home/widgets/project_card/widgets/play_store_button.dart';
import 'package:github_portfolio/models/global_variables.dart';

Widget ProjectDetails(String projectName, double buttonsWidth,{String? playStoreLink, String? browseCodeLink, String? liveDemoLink,bool showPlayStoreButton=false,bool showBrowseCodeButton=true,bool showLiveDemoButton=true}){
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
              Visibility(visible:showBrowseCodeButton, child: GoToLinkButton(browseCodeLink, "Browse Code", buttonsWidth)),
              Divider(thickness: padding,color: Colors.transparent),
              Visibility(visible:showLiveDemoButton, child: GoToLinkButton(liveDemoLink, "Live Demo", buttonsWidth)),
              Visibility(visible: (!showLiveDemoButton && browseCodeLink == thisProjectRepoLink), child: GoToLinkButton(null, "You are already seeing this page.", buttonsWidth)),
              Visibility(visible: showPlayStoreButton, child: Divider(thickness: padding,color: Colors.transparent)),
              Visibility(visible: showPlayStoreButton, child: PlayStoreButton(playStoreLink, buttonsWidth)),
            ],
          ),
        ),
      ],
    ),
  );
}