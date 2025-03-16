import 'package:get/get.dart';
import 'package:music_app/core/services/api_service.dart';
import 'package:music_app/core/services/audio_player_service_impl.dart';

class MusicAppInitialBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(ApiService());

    Get.put(AudioPlayerServiceImpl());

    //Apenas quando for usada
    Get.lazyPut(() => MusicPlayerController());
  }


}