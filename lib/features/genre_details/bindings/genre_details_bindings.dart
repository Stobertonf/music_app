

import 'package:get/get.dart';
import 'package:music_app/features/genre_details/controllers/genre_detalis_controller.dart';

class GenreDetailsBiddings extends Bindings{
  @override
  void dependencies(){
    Get.put(GenreDetailsController);
  }
}