// ignore_for_file: await_only_futures

import 'package:audio_service/audio_service.dart';
import 'package:first_radio/pages/home_page_copy_copy/home_page_copy_copy_widget.dart';

import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:just_audio/just_audio.dart';
import 'package:url_launcher/url_launcher.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';
import 'package:flutter_radio_player/flutter_radio_player.dart';
import 'package:radio_player/radio_player.dart';
import '/pages/rating.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({
    super.key,
    String? playRadio,
    bool? stopplay, required AudioHandler audioHandler,
  })  : playRadio = playRadio ?? 'gg',
        stopplay = stopplay ?? true;

  final String playRadio;
  final bool stopplay;

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final RadioPlayer _radioPlayer = RadioPlayer();
  String _status = "Stopped";
  bool _isPlaying = true;

  final String playStoreUrl = 'https://play.google.com/store/apps/details?id=com.yourapp.id';


  final unfocusNode = FocusNode();
  AudioPlayer? soundPlayer;
  //RadioPlayer _radioPlayer = RadioPlayer();

  

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());

    _initializeRadioPlayer();
  }

Future<void> _initializeRadioPlayer() async {
  try {
    await _radioPlayer.setChannel(
      title: "Your Radio Station",
      url: "https://s3.radio.co/s265583d6c/listen",
      // imagePath: "optional_image_path_here", // Optional
    );
    await _radioPlayer.play(); // Start playing the radio
    setState(() {
      _status = "Playing";
      _isPlaying = true;
    });
  } catch (e) {
    print("Error initializing radio player: $e");
  }
}


  // void playOrPause() {
  //   try {
  //     if (_status == "Playing") {
  //       _radioPlayer.pause();
  //       setState(() {
  //         _status = "Paused";
  //         _isPlaying = false;
  //       });
  //     } else {
  //       _radioPlayer.play();
  //       setState(() {
  //         _status = "Playing";
  //         _isPlaying = true;
  //       });
  //     }
  //   } catch (e) {
  //     print("Error: $e");
  //   }
  // }

  bool playOrPause() {
  try {
    if (_status == "Playing") {
      _radioPlayer.pause();
      setState(() {
        _status = "Paused";
        _isPlaying = false;
      });
    } else {
      _radioPlayer.play();
      setState(() {
        _status = "Playing";
        _isPlaying = true;
      });
    }
  } catch (e) {
    print("Error: $e");
  }
  return _isPlaying;
}


  

  Future<void> stop() async {
    try {
      _radioPlayer.stop();
      setState(() {
        _status = "Stopped";
        _isPlaying = false;
      });
    } catch (e) {
      print("Error: $e");
    }
  }

  String get status => _status;

  @override
  void dispose() {
    _model.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: const Color(0xFF23416B),
        drawer: Drawer(
          elevation: 16.0,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: 80.0,
                height: 80.0,
                clipBehavior: Clip.antiAlias,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Image.asset(
                  'assets/images/WhatsApp_Image_2024-04-18_at_20.21.51_(1).jpeg',
                  fit: BoxFit.cover,
                ),
              ),
              const Divider(
                thickness: 1.0,
                color: Color(0xCC261E1E),
              ),
              ListView(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                        child: Icon(
                          Icons.spa_outlined,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 28.0,
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                        child: Text(
                          'About Us',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const Divider(
                thickness: 1.0,
                color: Color(0xCC261E1E),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: ListView(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              20.0, 0.0, 0.0, 0.0),
                          child: Icon(
                            Icons.my_location,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 28.0,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              5.0, 0.0, 0.0, 0.0),
                          child: Text(
                            'Contact Us',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Divider(
                thickness: 1.0,
                color: Color(0xCC261E1E),
              ),
            ],
          ),
        ),
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(30.0),
          child: AppBar(
            backgroundColor: const Color(0xFF224E76),
            automaticallyImplyLeading: true,
            title: Text(
              'First Radio',
              style: FlutterFlowTheme.of(context).titleMedium.override(
                    fontFamily: 'Readex Pro',
                    letterSpacing: 0.0,
                  ),
            ),
            actions: const [],
            centerTitle: true,
            elevation: 4.0,
          ),
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Align(
                  alignment: const AlignmentDirectional(0.0, -0.08),
                  child: Container(
                    width: 431.0,
                    height: 765.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: Image.asset(
                          'assets/images/back_ground.png',
                        ).image,
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: Stack(
                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                    children: [
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(0.0, 1.0),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 50.0, 0.0, 0.0),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              await Navigator.push(
                                                context,
                                                PageTransition(
                                                  type: PageTransitionType.fade,
                                                  child:
                                                      FlutterFlowExpandedImageView(
                                                    image: Image.asset(
                                                      'assets/images/1-03.png',
                                                      fit: BoxFit.contain,
                                                      alignment:
                                                          const Alignment(0.0, 0.0),
                                                    ),
                                                    allowRotation: false,
                                                    tag: 'imageTag1',
                                                    useHeroAnimation: true,
                                                  ),
                                                ),
                                              );
                                            },
                                            child: Hero(
                                              tag: 'imageTag1',
                                              transitionOnUserGestures: true,
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                                child: Image.asset(
                                                  'assets/images/1-03.png',
                                                  width: 4000.0,
                                                  height: 128.0,
                                                  fit: BoxFit.fill,
                                                  alignment:
                                                      const Alignment(0.0, 0.0),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(0.0, 0.0),
                                        child: Container(
                                          width: 140.0,
                                          height: 140.0,
                                          clipBehavior: Clip.antiAlias,
                                          decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                          ),
                                          child: Image.asset(
                                            'assets/images/1-04.png',
                                            fit: BoxFit.fill,
                                            alignment: const Alignment(0.0, 0.0),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.asset(
                                    'assets/images/curentlt_playing.png',
                                    width: 300.0,
                                    height: 30.0,
                                    fit: BoxFit.fitWidth,
                                  ),
                                ),
                                    Text(
                                      'Praise and Worship',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 4.0, 4.0, 0.0),
                                    child: Container(
                                      width: 411.0,
                                      height: 495.0,
                                      decoration: BoxDecoration(
                                        color: const Color(0xFFF1A05D),
                                        image: DecorationImage(
                                          fit: BoxFit.none,
                                          alignment:
                                              const AlignmentDirectional(0.0, 0.0),
                                          image: Image.asset(
                                            'assets/images/orange.png',
                                          ).image,
                                        ),
                                        borderRadius: const BorderRadius.only(
                                          bottomLeft: Radius.circular(0.0),
                                          bottomRight: Radius.circular(0.0),
                                          topLeft: Radius.circular(25.0),
                                          topRight: Radius.circular(25.0),
                                        ),
                                        shape: BoxShape.rectangle,
                                      ),
                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                      child: Align(
                                        alignment:
                                            const AlignmentDirectional(0.0, -1.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Flexible(
                                              child: Align(
                                                alignment: const AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 5.0, 0.0, 0.0),
                                                  child: SingleChildScrollView(
                                                    scrollDirection:
                                                        Axis.horizontal,
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .stretch,
                                                      children: [
                                                        Container(
                                                          width: 0.0,
                                                          decoration:
                                                              const BoxDecoration(
                                                            shape: BoxShape
                                                                .rectangle,
                                                          ),
                                                        ),
                                                        Container(
                                                                          child: Column(
                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                      children: <Widget>[
                                                        // Text(
                                                        //   'Currently playing: $_status',
                                                        //   style: TextStyle(fontSize: 10),
                                                        // ),
                                                //row for play icon
                                      
                                          
                                                 Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 10.0,
                                                                0.0, 0.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceAround,
                                                      children: [
                                  
                                                        IconButton(
                                                          icon: Icon(
                                                             Icons.star_border,
                                                            color: Color(0xFFF9FCFF),
                                                            size: 60.0,
                                                          ),
                                                          onPressed: () async {
                                                            final url = '$playStoreUrl&reviewId=0';
                                                            if (await canLaunch(url)) {
                                                              await launch(url);
                                                            } else {
                                                              throw 'Could not launch $url';
                                                            }
                                                          },
                                                        ),
                                                        
                                                        SizedBox(
                                                        width: 20,
                                                        ),
                                                        IconButton(
                                                          icon: Icon(
                                                            _isPlaying ? Icons.pause_circle_outline : Icons.play_circle_outline,
                                                            color: Color(0xFFF9FCFF),
                                                            size: 60.0,
                                                          ),
                                                          onPressed: () async {
                                                            await playOrPause();
                                                          },
                                                        ),
                                                         SizedBox(
                                                        width: 20,
                                                        ),
                                                      IconButton(
                                                            icon: Icon(
                                                              Icons.info_outline,
                                                              color: Color(0xFFF9FCFF),
                                                              size: 60.0,
                                                            ),
                                                            onPressed: () {
                                                              Navigator.push(
                                                                context,
                                                                MaterialPageRoute(builder: (context) => HomePageCopyCopyWidget()),
                                                              );
                                                            },
                                                          ),
                                                          ],
                                
                                                    ),
                                                  ),
                                                
        //     SizedBox(height: 1),
        //     ElevatedButton(
        //       onPressed: () async {
        //         await playOrPause();
        //       },
        //       child: Text("Play/Pause"),
        //     ),
        //     SizedBox(height: 5),
        //     ElevatedButton(
        //       onPressed: () async {
        //         await stop();
        //       },
        //       child: Text("Stop"),
        //   ),
         ],
        ),
                                                        )
                                                        //   width: 100.0,
                                                        //   height: 60.0,
                                                        //   child: custom_widgets
                                                        //       .AdvanceMusicPlayerCopy(
                                                        //     width: 100.0,
                                                        //     height: 60.0,
                                                        //     initialUrl:
                                                        //         'https://s3.radio.co/s265583d6c/listen',
                                                        //     pauseIconPath: const Icon(
                                                        //       Icons.pause_sharp,
                                                        //       color: Color(
                                                        //           0xFFF9F4F4),
                                                        //       size: 24.0,
                                                        //     ),
                                                        //     playIconPath: const Icon(
                                                        //       Icons.play_circle,
                                                        //       color: Color(
                                                        //           0xFFF5EDED),
                                                        //       size: 24.0,
                                                        //     ),
                                                        //     pauseIconColor:
                                                        //         const Color(
                                                        //             0xFFFFF9F9),
                                                        //   ),
                                                        // ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 10.0, 0.0, 10.0),
                                              child: Container(
                                                width: 434.0,
                                                height: 383.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  image: DecorationImage(
                                                    fit: BoxFit.cover,
                                                    image: Image.asset(
                                                      'assets/images/buttons_bg.png',
                                                    ).image,
                                                  ),
                                                  borderRadius:
                                                      const BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(0.0),
                                                    bottomRight:
                                                        Radius.circular(0.0),
                                                    topLeft:
                                                        Radius.circular(25.0),
                                                    topRight:
                                                        Radius.circular(25.0),
                                                  ),
                                                  border: Border.all(
                                                    color: const Color(0xFFF6EFEF),
                                                  ),
                                                ),
                                                child: Align(
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          0.0, -1.0),
                                                  child: Container(
                                                    width: 325.0,
                                                    height: 441.0,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      image: DecorationImage(
                                                        fit: BoxFit.cover,
                                                        image: Image.asset(
                                                          'assets/images/buttons_bg.png',
                                                        ).image,
                                                      ),
                                                      borderRadius:
                                                          const BorderRadius.only(
                                                        bottomLeft:
                                                            Radius.circular(
                                                                0.0),
                                                        bottomRight:
                                                            Radius.circular(
                                                                0.0),
                                                        topLeft:
                                                            Radius.circular(
                                                                15.0),
                                                        topRight:
                                                            Radius.circular(
                                                                20.0),
                                                      ),
                                                    ),
                                                    child: Align(
                                                      alignment:
                                                          const AlignmentDirectional(
                                                              0.0, 0.0),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Container(
                                                            width: 360.0,
                                                            height: 100.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: const Color(
                                                                  0x00FFFFFF),
                                                              image:
                                                                  DecorationImage(
                                                                fit: BoxFit
                                                                    .cover,
                                                                image:
                                                                    Image.asset(
                                                                  'assets/images/prayer_donate_buton.png',
                                                                ).image,
                                                              ),
                                                            ),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceEvenly,
                                                              children: [
                                                                InkWell(
                                                                  splashColor:
                                                                      Colors
                                                                          .transparent,
                                                                  focusColor: Colors
                                                                      .transparent,
                                                                  hoverColor: Colors
                                                                      .transparent,
                                                                  highlightColor:
                                                                      Colors
                                                                          .transparent,
                                                                  onTap:
                                                                      () async {
                                                                    await launchURL(
                                                                        'https://wa.me/256772142021');
                                                                  },
                                                                  child:
                                                                      ClipRRect(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                    child: Image
                                                                        .asset(
                                                                      'assets/images/1-07.png',
                                                                      width:
                                                                          350.0,
                                                                      height:
                                                                          93.0,
                                                                      fit: BoxFit
                                                                          .cover,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Container(
                                                            width: 360.0,
                                                            height: 100.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                              image:
                                                                  DecorationImage(
                                                                fit: BoxFit
                                                                    .cover,
                                                                image:
                                                                    Image.asset(
                                                                  'assets/images/prayer_donate_buton.png',
                                                                ).image,
                                                              ),
                                                            ),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                InkWell(
                                                                  splashColor:
                                                                      Colors
                                                                          .transparent,
                                                                  focusColor: Colors
                                                                      .transparent,
                                                                  hoverColor: Colors
                                                                      .transparent,
                                                                  highlightColor:
                                                                      Colors
                                                                          .transparent,
                                                                  onTap:
                                                                      () async {
                                                                    await launchURL(
                                                                        'https://wa.me/256772142021');
                                                                  },
                                                                  child:
                                                                      ClipRRect(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                    child: Image
                                                                        .asset(
                                                                      'assets/images/1-09.png',
                                                                      width:
                                                                          350.0,
                                                                      height:
                                                                          93.0,
                                                                      fit: BoxFit
                                                                          .cover,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Container(
                                                            width: 360.0,
                                                            height: 100.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                              image:
                                                                  DecorationImage(
                                                                fit: BoxFit
                                                                    .cover,
                                                                image:
                                                                    Image.asset(
                                                                  'assets/images/prayer_donate_buton.png',
                                                                ).image,
                                                              ),
                                                            ),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Align(
                                                                  alignment:
                                                                      const AlignmentDirectional(
                                                                          -7.0,
                                                                          0.0),
                                                                  child:
                                                                      ClipRRect(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                    child: Image
                                                                        .asset(
                                                                      'assets/images/1-08.png',
                                                                      width:
                                                                          350.0,
                                                                      height:
                                                                          93.0,
                                                                      fit: BoxFit
                                                                          .cover,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Container(
                                                            width: 308.0,
                                                            height: 62.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                              image:
                                                                  DecorationImage(
                                                                fit:
                                                                    BoxFit.fill,
                                                                image:
                                                                    Image.asset(
                                                                  'assets/images/studio_line_bg.png',
                                                                ).image,
                                                              ),
                                                            ),
                                                            child: Stack(
                                                              children: [
                                                                ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                  child: Image
                                                                      .asset(
                                                                    'assets/images/studio_line_bg.png',
                                                                    width:
                                                                        300.0,
                                                                    height:
                                                                        49.0,
                                                                    fit: BoxFit
                                                                        .cover,
                                                                  ),
                                                                ),
                                                                InkWell(
                                                                  splashColor:
                                                                      Colors
                                                                          .transparent,
                                                                  focusColor: Colors
                                                                      .transparent,
                                                                  hoverColor: Colors
                                                                      .transparent,
                                                                  highlightColor:
                                                                      Colors
                                                                          .transparent,
                                                                  onTap:
                                                                      () async {
                                                                    await launchUrl(
                                                                        Uri(
                                                                      scheme:
                                                                          'tel',
                                                                      path:
                                                                          '+256772142021',
                                                                    ));
                                                                  },
                                                                  child:
                                                                      ClipRRect(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                    child: Image
                                                                        .asset(
                                                                      'assets/images/stidio_line_text.png',
                                                                      width:
                                                                          298.0,
                                                                      height:
                                                                          57.0,
                                                                      fit: BoxFit
                                                                          .cover,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ].divide(const SizedBox(
                                                            height: 1.0)),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: Container(
                                    width: 397.0,
                                    height: 29.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: Image.asset(
                                          'assets/images/back_ground.png',
                                        ).image,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 30.0, 0.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Icon(
                                            Icons.share_outlined,
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                            size: 30.0,
                                          ),
                                          FaIcon(
                                            FontAwesomeIcons.youtube,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                            size: 30.0,
                                          ),
                                          const Icon(
                                            Icons.facebook_sharp,
                                            color: Color(0xFFF7F9FA),
                                            size: 30.0,
                                          ),
                                          Icon(
                                            Icons.tiktok_outlined,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                            size: 24.0,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

