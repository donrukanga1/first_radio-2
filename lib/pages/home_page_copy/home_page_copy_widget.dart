import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'home_page_copy_model.dart';
export 'home_page_copy_model.dart';

class HomePageCopyWidget extends StatefulWidget {
  const HomePageCopyWidget({super.key});

  @override
  State<HomePageCopyWidget> createState() => _HomePageCopyWidgetState();
}

class _HomePageCopyWidgetState extends State<HomePageCopyWidget> {
  late HomePageCopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageCopyModel());
  }

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
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Align(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              child: SingleChildScrollView(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Align(
                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                      child: Stack(
                                        alignment:
                                            const AlignmentDirectional(0.0, 0.0),
                                        children: [
                                          Align(
                                            alignment:
                                                const AlignmentDirectional(0.0, 1.0),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 50.0, 0.0, 0.0),
                                              child: InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  await Navigator.push(
                                                    context,
                                                    PageTransition(
                                                      type: PageTransitionType
                                                          .fade,
                                                      child:
                                                          FlutterFlowExpandedImageView(
                                                        image: Image.asset(
                                                          'assets/images/waves.png',
                                                          fit: BoxFit.contain,
                                                          alignment: const Alignment(
                                                              0.0, 0.0),
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
                                                  transitionOnUserGestures:
                                                      true,
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                    child: Image.asset(
                                                      'assets/images/waves.png',
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
                                              width: 120.0,
                                              height: 120.0,
                                              clipBehavior: Clip.antiAlias,
                                              decoration: const BoxDecoration(
                                                shape: BoxShape.circle,
                                              ),
                                              child: Image.asset(
                                                'assets/images/WhatsApp_Image_2024-04-18_at_20.21.51_(1).jpeg',
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
                                            0.0, 12.0, 1.0, 0.0),
                                        child: Container(
                                          width: 411.0,
                                          height: 440.0,
                                          decoration: BoxDecoration(
                                            color: const Color(0xFFF1A05D),
                                            image: DecorationImage(
                                              fit: BoxFit.none,
                                              alignment: const AlignmentDirectional(
                                                  0.0, 0.0),
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
                                          alignment:
                                              const AlignmentDirectional(0.0, 0.0),
                                          child: Align(
                                            alignment:
                                                const AlignmentDirectional(0.0, -1.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                const Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 10.0,
                                                                0.0, 0.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceEvenly,
                                                      children: [
                                                        Icon(
                                                          Icons.star_border,
                                                          color:
                                                              Color(0xFFF1F6FA),
                                                          size: 34.0,
                                                        ),
                                                        Icon(
                                                          Icons
                                                              .call,
                                                          color:
                                                              Color(0xFFF9FCFF),
                                                          size: 62.0,
                                                        ),
                                                        Icon(
                                                          Icons.close_sharp,
                                                          color:
                                                              Color(0xFFF7FCFF),
                                                          size: 34.0,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  'Program LineUp',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .labelLarge
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        color:
                                                            const Color(0xFF1A3040),
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 10.0, 0.0, 0.0),
                                                  child: Container(
                                                    width: 434.0,
                                                    height: 356.0,
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
                                                                25.0),
                                                        topRight:
                                                            Radius.circular(
                                                                25.0),
                                                      ),
                                                    ),
                                                    child:
                                                        SingleChildScrollView(
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: [
                                                          Align(
                                                            alignment:
                                                                const AlignmentDirectional(
                                                                    0.0, -1.0),
                                                            child: Container(
                                                              width: 325.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                borderRadius:
                                                                    const BorderRadius
                                                                        .only(
                                                                  bottomLeft: Radius
                                                                      .circular(
                                                                          0.0),
                                                                  bottomRight: Radius
                                                                      .circular(
                                                                          0.0),
                                                                  topLeft: Radius
                                                                      .circular(
                                                                          15.0),
                                                                  topRight: Radius
                                                                      .circular(
                                                                          20.0),
                                                                ),
                                                              ),
                                                              child: Align(
                                                                alignment:
                                                                    const AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child:
                                                                    SingleChildScrollView(
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    children: [
                                                                      Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            10.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Container(
                                                                          width:
                                                                              524.0,
                                                                          height:
                                                                              64.0,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                const Color(0xFFDDEEF1),
                                                                            image:
                                                                                DecorationImage(
                                                                              fit: BoxFit.cover,
                                                                              image: Image.asset(
                                                                                'assets/images/prayer_donate_buton.png',
                                                                              ).image,
                                                                            ),
                                                                            borderRadius:
                                                                                const BorderRadius.only(
                                                                              bottomLeft: Radius.circular(20.0),
                                                                              bottomRight: Radius.circular(20.0),
                                                                              topLeft: Radius.circular(20.0),
                                                                              topRight: Radius.circular(20.0),
                                                                            ),
                                                                            shape:
                                                                                BoxShape.rectangle,
                                                                          ),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.start,
                                                                            children: [
                                                                              const Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                                child: Icon(
                                                                                  Icons.radio_rounded,
                                                                                  color: Color(0xFF265980),
                                                                                  size: 35.0,
                                                                                ),
                                                                              ),
                                                                              const Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 15.0, 0.0),
                                                                                child: Text(
                                                                                  'Morning Encounter',
                                                                                  style: TextStyle(
                                                                                    color: Color(0xFF265980),
                                                                                    fontWeight: FontWeight.w300,
                                                                                    fontSize: 18.0,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Text(
                                                                                '6:00 AM',
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Readex Pro',
                                                                                      letterSpacing: 0.0,
                                                                                    ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            1.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Container(
                                                                          width:
                                                                              524.0,
                                                                          height:
                                                                              64.0,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                const Color(0xFFDDEEF1),
                                                                            image:
                                                                                DecorationImage(
                                                                              fit: BoxFit.cover,
                                                                              image: Image.asset(
                                                                                'assets/images/prayer_donate_buton.png',
                                                                              ).image,
                                                                            ),
                                                                            borderRadius:
                                                                                const BorderRadius.only(
                                                                              bottomLeft: Radius.circular(20.0),
                                                                              bottomRight: Radius.circular(20.0),
                                                                              topLeft: Radius.circular(20.0),
                                                                              topRight: Radius.circular(20.0),
                                                                            ),
                                                                            shape:
                                                                                BoxShape.rectangle,
                                                                          ),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.start,
                                                                            children: [
                                                                              const Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                                child: Icon(
                                                                                  Icons.radio_rounded,
                                                                                  color: Color(0xFF265980),
                                                                                  size: 35.0,
                                                                                ),
                                                                              ),
                                                                              const Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 15.0, 0.0),
                                                                                child: Text(
                                                                                  'Faith  Talk',
                                                                                  style: TextStyle(
                                                                                    color: Color(0xFF265980),
                                                                                    fontWeight: FontWeight.w300,
                                                                                    fontSize: 18.0,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Text(
                                                                                '6:00 AM',
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Readex Pro',
                                                                                      letterSpacing: 0.0,
                                                                                    ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            1.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Container(
                                                                          width:
                                                                              524.0,
                                                                          height:
                                                                              64.0,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                const Color(0xFFDDEEF1),
                                                                            image:
                                                                                DecorationImage(
                                                                              fit: BoxFit.cover,
                                                                              image: Image.asset(
                                                                                'assets/images/prayer_donate_buton.png',
                                                                              ).image,
                                                                            ),
                                                                            borderRadius:
                                                                                const BorderRadius.only(
                                                                              bottomLeft: Radius.circular(20.0),
                                                                              bottomRight: Radius.circular(20.0),
                                                                              topLeft: Radius.circular(20.0),
                                                                              topRight: Radius.circular(20.0),
                                                                            ),
                                                                            shape:
                                                                                BoxShape.rectangle,
                                                                          ),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.start,
                                                                            children: [
                                                                              const Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                                child: Icon(
                                                                                  Icons.radio_rounded,
                                                                                  color: Color(0xFF265980),
                                                                                  size: 35.0,
                                                                                ),
                                                                              ),
                                                                              const Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 15.0, 0.0),
                                                                                child: Text(
                                                                                  'The Witness',
                                                                                  style: TextStyle(
                                                                                    color: Color(0xFF265980),
                                                                                    fontWeight: FontWeight.w300,
                                                                                    fontSize: 18.0,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Text(
                                                                                '6:00 AM',
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Readex Pro',
                                                                                      letterSpacing: 0.0,
                                                                                    ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            1.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Container(
                                                                          width:
                                                                              524.0,
                                                                          height:
                                                                              64.0,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                const Color(0xFFDDEEF1),
                                                                            image:
                                                                                DecorationImage(
                                                                              fit: BoxFit.cover,
                                                                              image: Image.asset(
                                                                                'assets/images/prayer_donate_buton.png',
                                                                              ).image,
                                                                            ),
                                                                            borderRadius:
                                                                                const BorderRadius.only(
                                                                              bottomLeft: Radius.circular(20.0),
                                                                              bottomRight: Radius.circular(20.0),
                                                                              topLeft: Radius.circular(20.0),
                                                                              topRight: Radius.circular(20.0),
                                                                            ),
                                                                            shape:
                                                                                BoxShape.rectangle,
                                                                          ),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.start,
                                                                            children: [
                                                                              const Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                                child: Icon(
                                                                                  Icons.radio_rounded,
                                                                                  color: Color(0xFF265980),
                                                                                  size: 35.0,
                                                                                ),
                                                                              ),
                                                                              const Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 15.0, 0.0),
                                                                                child: Text(
                                                                                  'Wisdom Hour',
                                                                                  style: TextStyle(
                                                                                    color: Color(0xFF265980),
                                                                                    fontWeight: FontWeight.w300,
                                                                                    fontSize: 18.0,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Text(
                                                                                '6:00 AM',
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Readex Pro',
                                                                                      letterSpacing: 0.0,
                                                                                    ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            1.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Container(
                                                                          width:
                                                                              524.0,
                                                                          height:
                                                                              64.0,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                const Color(0xFFDDEEF1),
                                                                            image:
                                                                                DecorationImage(
                                                                              fit: BoxFit.cover,
                                                                              image: Image.asset(
                                                                                'assets/images/prayer_donate_buton.png',
                                                                              ).image,
                                                                            ),
                                                                            borderRadius:
                                                                                const BorderRadius.only(
                                                                              bottomLeft: Radius.circular(20.0),
                                                                              bottomRight: Radius.circular(20.0),
                                                                              topLeft: Radius.circular(20.0),
                                                                              topRight: Radius.circular(20.0),
                                                                            ),
                                                                            shape:
                                                                                BoxShape.rectangle,
                                                                          ),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.start,
                                                                            children: [
                                                                              const Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                                child: Icon(
                                                                                  Icons.radio_rounded,
                                                                                  color: Color(0xFF265980),
                                                                                  size: 35.0,
                                                                                ),
                                                                              ),
                                                                              const Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 15.0, 0.0),
                                                                                child: Text(
                                                                                  'Morning Encounter',
                                                                                  style: TextStyle(
                                                                                    color: Color(0xFF265980),
                                                                                    fontWeight: FontWeight.w300,
                                                                                    fontSize: 18.0,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Text(
                                                                                '6:00 AM',
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Readex Pro',
                                                                                      letterSpacing: 0.0,
                                                                                    ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ].divide(const SizedBox(
                                                                        height:
                                                                            1.0)),
                                                                  ),
                                                                ),
                                                              ),
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
                                                        ],
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
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 30.0, 0.0, 0.0),
                                        child: Container(
                                          width: 397.0,
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
                                          alignment:
                                              const AlignmentDirectional(0.0, 1.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Icon(
                                                Icons.share_outlined,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                size: 30.0,
                                              ),
                                              FaIcon(
                                                FontAwesomeIcons.youtube,
                                                color:
                                                    FlutterFlowTheme.of(context)
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
                                                color:
                                                    FlutterFlowTheme.of(context)
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
