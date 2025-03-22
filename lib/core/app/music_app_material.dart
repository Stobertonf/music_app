import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:music_app/core/app/music_app_colors.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:music_app/features/genre_details/bindings/genre_details_bindings.dart';
import 'package:music_app/features/genre_list/presentation/screens/genre_list_screen.dart';
import 'package:music_app/features/genre_list/presentation/bindings/genre_list_bindings.dart';
import 'package:music_app/features/genre_details/presentation/screens/genre_details_screen.dart';

class MusicAppMaterial {
  MusicAppMaterial._();

  static String get getTitle => "Music App - Flutter Dicas Bootcamp";
  
  //Rever a aula 7 - COnfigurações iniciais do app parte 2

  static List<GetPage> get GetPage => [
    GetPage(
      name: GenreListScreen.routeName,
      page: () => const GenreListScreen(),
      binding: GenreListBindings(),
      children: [
        GetPage(
          name: const GenreDetaislScreen.routeName,
          page: () => const GenreDetailsScreen(),
          binding: GenreDetailsBiddings(),
        ),
      ]
    ),
  ];

  static ThemeData get getTheme => ThemeData(
    primaryColor: MusicAppColors.primaryColor,
    appBarTheme: AppBarTheme(
        backgroundColor: MusicAppColors.primaryColor,
        titleTextStyle: TextStyle(color: MusicAppColors.secondaryColor, fontWeight: FontWeight.bold, 
        fontSize: 22,
        
      ),
      centerTitle: true,
      elevation: 0,
      
    ),
    fontFamily: 'Nunito',
  );
}