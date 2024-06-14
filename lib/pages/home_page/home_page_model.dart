import '/flutter_flow/flutter_flow_util.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:flutter_radio_player/flutter_radio_player.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.
  /// 
  // FlutterRadioPlayer _flutterRadioPlayer = new FlutterRadioPlayer();
  // String _status = "Stopped";



  final unfocusNode = FocusNode();
  AudioPlayer? soundPlayer;

  @override
  void initState(BuildContext context) {
   
        
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    soundPlayer?.dispose();
  }

}

 //unfocusNode.dispose();
    
