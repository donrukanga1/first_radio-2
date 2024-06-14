import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

import 'home_page_copy_copy_model.dart';
export 'home_page_copy_copy_model.dart';

class HomePageCopyCopyWidget extends StatefulWidget {
  const HomePageCopyCopyWidget({super.key});

  @override
  State<HomePageCopyCopyWidget> createState() => _HomePageCopyCopyWidgetState();
}

class _HomePageCopyCopyWidgetState extends State<HomePageCopyCopyWidget> {
  late HomePageCopyCopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageCopyCopyModel());
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
        backgroundColor: Color(0xFF23416B),
        drawer: Drawer(
          elevation: 16,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: 80,
                height: 80,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Image.asset(
                  'assets/images/WhatsApp_Image_2024-04-18_at_20.21.51_(1).jpeg',
                  fit: BoxFit.cover,
                ),
              ),
              Divider(
                thickness: 1,
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
                        padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                        child: Icon(
                          Icons.spa_outlined,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 28,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                        child: Text(
                          'About Us',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    fontSize: 16,
                                    letterSpacing: 0,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Divider(
                thickness: 1,
                color: Color(0xCC261E1E),
              ),
              Padding(
                padding: EdgeInsets.all(2),
                child: ListView(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                          child: Icon(
                            Icons.my_location,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 28,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                          child: Text(
                            'Contact Us',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  fontSize: 16,
                                  letterSpacing: 0,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Divider(
                thickness: 1,
                color: Color(0xCC261E1E),
              ),
            ],
          ),
        ),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(30),
          child: AppBar(
            backgroundColor: Color(0xFF224E76),
            automaticallyImplyLeading: true,
            title: Text(
              'First Radio',
              style: FlutterFlowTheme.of(context).titleMedium.override(
                    fontFamily: 'Readex Pro',
                    letterSpacing: 0,
                  ),
            ),
            actions: [],
            centerTitle: true,
            elevation: 4,
          ),
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                alignment: AlignmentDirectional(0, 0),
                child: Container(
                  width: 431,
                  height: 765,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: Image.asset(
                        'assets/images/back_ground.png',
                      ).image,
                    ),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0, 1),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
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
                                    child: FlutterFlowExpandedImageView(
                                      image: Image.asset(
                                        'assets/images/about.jpeg',
                                        fit: BoxFit.contain,
                                        alignment: Alignment(0, 0),
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
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.asset(
                                    'assets/images/about.jpeg',
                                    width: 4000,
                                    height: 202,
                                    fit: BoxFit.fill,
                                    alignment: Alignment(0, 0),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0, 0),
                              child: SingleChildScrollView(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 12, 1, 0),
                                        child: Container(
                                          width: 411,
                                          height: 440,
                                          decoration: BoxDecoration(
                                            color: Color(0xFFF1A05D),
                                            image: DecorationImage(
                                              fit: BoxFit.none,
                                              alignment:
                                                  AlignmentDirectional(0, 0),
                                              image: Image.asset(
                                                'assets/images/orange.png',
                                              ).image,
                                            ),
                                            borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(0),
                                              bottomRight: Radius.circular(0),
                                              topLeft: Radius.circular(25),
                                              topRight: Radius.circular(25),
                                            ),
                                            shape: BoxShape.rectangle,
                                          ),
                                          alignment: AlignmentDirectional(0, 0),
                                          child: Align(
                                            alignment:
                                                AlignmentDirectional(0, -1),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  'About Us',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .labelLarge
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        color:
                                                            Color(0xFF1A3040),
                                                        letterSpacing: 0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 10, 0, 0),
                                                  child: Container(
                                                    width: 434,
                                                    height: 356,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      borderRadius:
                                                          BorderRadius.only(
                                                        bottomLeft:
                                                            Radius.circular(0),
                                                        bottomRight:
                                                            Radius.circular(0),
                                                        topLeft:
                                                            Radius.circular(25),
                                                        topRight:
                                                            Radius.circular(25),
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
                                                                AlignmentDirectional(
                                                                    0, -1),
                                                            child: Container(
                                                              width: 325,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .only(
                                                                  bottomLeft: Radius
                                                                      .circular(
                                                                          0),
                                                                  bottomRight: Radius
                                                                      .circular(
                                                                          0),
                                                                  topLeft: Radius
                                                                      .circular(
                                                                          15),
                                                                  topRight: Radius
                                                                      .circular(
                                                                          20),
                                                                ),
                                                              ),
                                                              child: RichText(
                                                                textScaler: MediaQuery.of(
                                                                        context)
                                                                    .textScaler,
                                                                text: TextSpan(
                                                                  children: [
                                                                    TextSpan(
                                                                      text:
                                                                          'First Radio',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Readex Pro',
                                                                            color:
                                                                                Color(0xFF000003),
                                                                            letterSpacing:
                                                                                0,
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                          ),
                                                                    ),
                                                                    TextSpan(
                                                                      text:
                                                                          '\nA Beacon of Faith, Knowledge, and Inspiration\nWelcome to First Radio, the heart of First Kingdom Ministries, founded by Pastor Moses Kasirye in 2024. At First Radio, we\'re dedicated to providing a refreshing blend of faith, knowledge, and inspiration to our listeners worldwide. Our mission is to uplift, educate, and empower individuals on their spiritual journey, guiding them towards a deeper understanding of their faith and purpose in life.',
                                                                      style:
                                                                          TextStyle(
                                                                        fontWeight:
                                                                            FontWeight.normal,
                                                                      ),
                                                                    ),
                                                                    TextSpan(
                                                                      text:
                                                                          '\n\nOur Purpose\n\nFirst Radio is more than just a radio station; it\'s a platform for spiritual growth and enlightenment. We believe in the transformative power of faith and seek to share this belief with our listeners through engaging content that resonates with their hearts and minds.',
                                                                      style:
                                                                          TextStyle(
                                                                        fontWeight:
                                                                            FontWeight.normal,
                                                                      ),
                                                                    ),
                                                                    TextSpan(
                                                                      text:
                                                                          '\n\nJoin Us\n\nWe invite you to join us on this journey of spiritual growth and enlightenment. Whether you\'re seeking guidance, inspiration, or simply a listening ear, First Radio is here for you. Tune in to our broadcasts, engage with our content, and become a part of our thriving community.\nConnect With Us\nStay connected with First Radio by following us on social media and signing up for our newsletter. Get the latest updates on upcoming programs, special events, and exclusive content straight to your inbox.',
                                                                      style:
                                                                          TextStyle(),
                                                                    ),
                                                                    TextSpan(
                                                                      text:
                                                                          '\n\nWhat We Offer',
                                                                      style:
                                                                          TextStyle(),
                                                                    ),
                                                                    TextSpan(
                                                                      text:
                                                                          '\n\nAt First Radio, we offer a diverse range of programming designed to nourish the soul and stimulate the intellect. From uplifting devotions to insightful discussions on finance, current affairs, and even dream interpretation, there\'s something for everyone to enjoy and learn ',
                                                                      style:
                                                                          TextStyle(),
                                                                    ),
                                                                    TextSpan(
                                                                      text:
                                                                          '\n\nContact Us',
                                                                      style:
                                                                          TextStyle(
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                      ),
                                                                    ),
                                                                    TextSpan(
                                                                      text:
                                                                          '\n\nHave a question or feedback? We\'d love to hear from you! Reach out to us via email or phone, and our friendly team will be happy to assist you.\nThank you for choosing First Radio as your trusted source of faith, knowledge, and inspiration. Together, let\'s embark on a journey towards spiritual growth and enlightenment.',
                                                                      style:
                                                                          TextStyle(),
                                                                    ),
                                                                    TextSpan(
                                                                      text:
                                                                          '\n\nOur Team',
                                                                      style:
                                                                          TextStyle(),
                                                                    ),
                                                                    TextSpan(
                                                                      text:
                                                                          '\n\nBehind First Radio is a team of dedicated individuals who are passionate about spreading the message of hope and love. Led by Pastor Moses Kasirye, our team consists of experienced broadcasters, writers, and theologians who bring a wealth of knowledge and insight to our programs.',
                                                                      style:
                                                                          TextStyle(),
                                                                    )
                                                                  ],
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Readex Pro',
                                                                        letterSpacing:
                                                                            0,
                                                                      ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Container(
                                                            width: 308,
                                                            height: 62,
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
                                                                              8),
                                                                  child: Image
                                                                      .asset(
                                                                    'assets/images/studio_line_bg.png',
                                                                    width: 300,
                                                                    height: 49,
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
                                                                        BorderRadius
                                                                            .circular(8),
                                                                    child: Image
                                                                        .asset(
                                                                      'assets/images/stidio_line_text.png',
                                                                      width:
                                                                          298,
                                                                      height:
                                                                          57,
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
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 20, 0, 0),
                                        child: Container(
                                          width: 397,
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
                                          alignment: AlignmentDirectional(0, 1),
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
                                                size: 30,
                                              ),
                                              FaIcon(
                                                FontAwesomeIcons.youtube,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                size: 30,
                                              ),
                                              Icon(
                                                Icons.facebook_sharp,
                                                color: Color(0xFFF7F9FA),
                                                size: 30,
                                              ),
                                              Icon(
                                                Icons.tiktok_outlined,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                size: 24,
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
