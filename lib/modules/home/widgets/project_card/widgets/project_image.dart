import 'package:flutter/material.dart';

Widget ProjectImage(String projectImageAsset){
  return Image.asset(projectImageAsset, fit: BoxFit.cover,);
}