import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:music_app/core/app/music_app_material.dart';
import 'package:music_app/core/app/music_app_initial_bindings.dart';
import 'package:music_app/features/genre_list/presentation/screens/genre_list_screen.dart';

class MusicApp extends StatelessWidget {
  const MusicApp({super.key});

  //Rever a aula 7 - COnfigurações iniciais do app parte 2
  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: MusicAppMaterial.getTitle,
      theme: MusicAppMaterial.getTheme,
      getPages: MusicAppMaterial.getPages,
      initialRoute: GenreListScreen.routeName,
      initialBinding: MusicAppInitialBindings(),
    );
  }
}