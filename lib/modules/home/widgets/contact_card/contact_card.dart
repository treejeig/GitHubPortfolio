import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:github_portfolio/models/global_variables.dart';

Widget ContactCard({required Function onClick,required Widget child}) {
  return GestureDetector(
    onTap: (){
      onClick();
      },
    child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: child
    ),
  );
}
