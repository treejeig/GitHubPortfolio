import 'package:flutter/material.dart';
import 'package:github_portfolio/models/global_variables.dart';
import 'package:github_portfolio/modules/home/widgets/on_hover_card.dart';
import 'package:github_portfolio/modules/home/widgets/project_card/widgets/project_details.dart';
import 'package:github_portfolio/modules/home/widgets/project_card/widgets/project_image.dart';

Widget ProjectCard(String projectName, String? projectImageAsset,{String? playStoreLink, String? browseCodeLink,String? liveDemoLink,bool showPlayStoreButton=false,bool showBrowseCodeButton=true,bool showLiveDemoButton=true}) {
  return OnHoverCard(
      firstWidget:
        ProjectImage(projectImageAsset),
      onHoverWidget:
        ProjectDetails(
            projectName,
            (projectCardSize - padding * 2),
            playStoreLink: playStoreLink,
            browseCodeLink: browseCodeLink,
            liveDemoLink: liveDemoLink,
            showPlayStoreButton: showPlayStoreButton,
            showBrowseCodeButton: showBrowseCodeButton,
            showLiveDemoButton: showLiveDemoButton),
      width: projectCardSize,
      height: projectCardSize);
}
