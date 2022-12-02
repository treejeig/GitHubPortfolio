import 'package:flutter/material.dart';

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
