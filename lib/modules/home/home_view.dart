import 'dart:ui';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:github_portfolio/models/custom_launch_url.dart';
import 'package:github_portfolio/models/global_variables.dart';
import 'package:github_portfolio/modules/home/widgets/contact_card/contact_card.dart';
import 'package:github_portfolio/modules/home/widgets/project_card/project_card.dart';
import 'home_controller.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  @override
  Widget build(BuildContext context) {
    final HomePageController homePageController = ref.watch(homePageProvider);
    return Scaffold(
      backgroundColor: appBGColor,
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            color: appBGColor,
            constraints: BoxConstraints(
              maxWidth: 1200,
            ),
            padding: EdgeInsets.all(padding),
            child: Center(
              child: Column(
                children: [
                  //#region Header of Page
                  Visibility(
                    visible:false,
                    child: Container(
                      width: double.infinity,
                      child: Wrap(
                        alignment: WrapAlignment.spaceBetween,
                        spacing: padding,
                        runSpacing: padding,
                        runAlignment: WrapAlignment.end,
                        children: [
                          Text("Aykut Öztürk",style: TextStyle(fontSize: 48),),
                          Text("Software Developer",style: TextStyle(fontSize: 48),),
                        ],
                      ),
                    ),
                  ),
                  Wrap(
                    alignment: WrapAlignment.center,
                    runAlignment: WrapAlignment.center,
                    spacing: padding,
                    children: [
                      Container(
                        constraints: BoxConstraints(
                          maxWidth: 900
                        ),
                        alignment: Alignment.center,
                        child: Text(homePageSummary,style: TextStyle(fontSize: 24)),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(125),
                        child: Image.asset("assets/treejeig.jpg",height: 250, width: 250,),
                      )
                    ],
                  ),
                  //#endregion
                  //#region Projects
                  Container(
                    padding: EdgeInsets.symmetric(vertical: padding),
                    child: Column(
                      children: [
                        Text("Projects",style: TextStyle(fontSize: 48),),
                        Container(
                          padding: EdgeInsets.only(top: padding),
                          height: projectCardSize+padding*2,
                          child: ScrollConfiguration(
                            behavior: ScrollConfiguration.of(context).copyWith(dragDevices: {
                              PointerDeviceKind.touch,
                              PointerDeviceKind.mouse,
                            },),
                            child: ListView.separated(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              physics: AlwaysScrollableScrollPhysics(),
                              itemCount: homePageController.projects.length,
                              separatorBuilder: (BuildContext context, int index){
                                return Container(
                                  width: padding*2,
                                );
                              },
                              itemBuilder: (BuildContext context, int index) {
                                return ProjectCard(
                                    homePageController.projects[index].name,
                                    homePageController.projects[index].assetName,
                                    playStoreLink : homePageController.projects[index].playStoreLink,
                                    browseCodeLink : homePageController.projects[index].browseCodeLink,
                                    liveDemoLink: homePageController.projects[index].liveDemoLink,
                                    showPlayStoreButton: homePageController.projects[index].showPlayStoreButton,
                                    showBrowseCodeButton: homePageController.projects[index].showBrowseCodeButton,
                                    showLiveDemoButton: homePageController.projects[index].showLiveDemoButton);
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  //#endregion
                  //#region Contact Infos
                  Container(
                    padding: EdgeInsets.symmetric(vertical: padding),
                    child: Column(
                      children: [
                        Text("Contact Info",style: TextStyle(fontSize: 36),),
                        Container(
                          padding: EdgeInsets.only(top: padding),
                          height: contactCardSize+padding*2,
                          child: ScrollConfiguration(
                            behavior: ScrollConfiguration.of(context).copyWith(dragDevices: {
                              PointerDeviceKind.touch,
                              PointerDeviceKind.mouse,
                            },),
                            child: ListView(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              physics: AlwaysScrollableScrollPhysics(),
                              children: [
                                ContactCard(
                                    onClick: (){
                                      CustomLaunchUrl.customLaunchUrl(linkedInProfileLink);
                                    },
                                    child: FaIcon(FontAwesomeIcons.linkedin,size: contactCardSize)
                                ),
                                Container(
                                  width: padding*2,
                                ),
                                ContactCard(
                                    onClick: (){
                                      CustomLaunchUrl.launchMailto();
                                    },
                                    child: FaIcon(FontAwesomeIcons.envelope,size: contactCardSize)
                                ),
                                Container(
                                  width: padding*2,
                                ),
                                ContactCard(
                                    onClick: (){
                                      CustomLaunchUrl.customLaunchUrl(githubProfileLink);
                                    },
                                    child: FaIcon(FontAwesomeIcons.github,size: contactCardSize)
                                ),
                                Container(
                                  width: padding*2,
                                ),
                                ContactCard(
                                    onClick: (){
                                      CustomLaunchUrl.customLaunchUrl(phoneNumberLink);
                                    },
                                    child: FaIcon(FontAwesomeIcons.phone,size: contactCardSize)
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  //#endregion
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
