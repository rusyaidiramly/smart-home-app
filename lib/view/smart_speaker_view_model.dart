import 'package:sliding_up_panel/sliding_up_panel.dart';

import '../provider/base_model.dart';

class SmartSpeakerViewModel extends BaseModel {
  PanelController pc = PanelController();
  bool isSpeakeron = true;
  double speakerVolume = 65;

  void speakerSwitch(bool value) {
    isSpeakeron = value;
    notifyListeners();
  }

  void changeSpeakerVolume(double newVal) {
    speakerVolume = newVal;
    notifyListeners();
  }
}
