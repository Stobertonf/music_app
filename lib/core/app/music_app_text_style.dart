import 'package:flutter/material.dart';
import 'package:music_app/core/app/music_app_colors.dart';

class MusicAppTextSyle{

  MusicAppTextSyle._();

  static TextStyle get getSamllStype => getNormalStyle.copyWith(fontSize: 12 );
  static TextStyle get getTitleStyle => getNormalBoldStyle.copyWith(fontSize: 24 );
  static TextStyle get getNormalBoldStyle => getNormalBoldStyle.copyWith(fontWeight: FontWeight.bold );
  static TextStyle get getNormalStyle => TextStyle( fontSize: 16, color: MusicAppColors.secondaryColor );
}