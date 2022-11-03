import '../backend/backend.dart';
import '../components/pop_up_widget.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:share_plus/share_plus.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> with TickerProviderStateMixin {
  final animationsMap = {
    'textOnPageLoadAnimation1': AnimationInfo(
      loop: true,
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeIn,
          delay: 0.ms,
          duration: 900.ms,
          begin: 0,
          end: 1,
        ),
      ],
    ),
    'textOnPageLoadAnimation2': AnimationInfo(
      loop: true,
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeIn,
          delay: 0.ms,
          duration: 900.ms,
          begin: 0,
          end: 1,
        ),
      ],
    ),
    'textOnPageLoadAnimation3': AnimationInfo(
      loop: true,
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeIn,
          delay: 0.ms,
          duration: 900.ms,
          begin: 0,
          end: 1,
        ),
      ],
    ),
    'textOnPageLoadAnimation4': AnimationInfo(
      loop: true,
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeIn,
          delay: 0.ms,
          duration: 900.ms,
          begin: 0,
          end: 1,
        ),
      ],
    ),
    'textOnPageLoadAnimation5': AnimationInfo(
      loop: true,
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeIn,
          delay: 0.ms,
          duration: 900.ms,
          begin: 0,
          end: 1,
        ),
      ],
    ),
  };
  PageController? pageViewController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<AppsRecord>>(
      stream: queryAppsRecord(
        queryBuilder: (appsRecord) => appsRecord.where('restaurantAddress',
            isEqualTo: 'Opalstraße 20, 84032 Altdorf'),
        singleRecord: true,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50,
              height: 50,
              child: CircularProgressIndicator(
                color: FlutterFlowTheme.of(context).primaryColor,
              ),
            ),
          );
        }
        List<AppsRecord> homeAppsRecordList = snapshot.data!;
        final homeAppsRecord =
            homeAppsRecordList.isNotEmpty ? homeAppsRecordList.first : null;
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          drawer: Container(
            width: MediaQuery.of(context).size.width * 0.7,
            child: Drawer(
              elevation: 16,
              child: Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(15, 50, 15, 0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 0, 30),
                            child: InkWell(
                              onTap: () async {
                                context.pushNamed(
                                  'aboutUsPage',
                                  queryParams: {
                                    'restaurantName': serializeParam(
                                      homeAppsRecord!.restaurantName,
                                      ParamType.String,
                                    ),
                                  }.withoutNulls,
                                  extra: <String, dynamic>{
                                    kTransitionInfoKey: TransitionInfo(
                                      hasTransition: true,
                                      transitionType:
                                          PageTransitionType.leftToRight,
                                    ),
                                  },
                                );
                              },
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Icon(
                                    Icons.home_work,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 24,
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20, 0, 0, 0),
                                    child: Text(
                                      'Über uns',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Montserrat',
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 0, 30),
                            child: InkWell(
                              onTap: () async {
                                context.pushNamed(
                                  'ImprintPage',
                                  queryParams: {
                                    'impressum': serializeParam(
                                      homeAppsRecord!.restaurantImprint,
                                      ParamType.String,
                                    ),
                                  }.withoutNulls,
                                  extra: <String, dynamic>{
                                    kTransitionInfoKey: TransitionInfo(
                                      hasTransition: true,
                                      transitionType:
                                          PageTransitionType.leftToRight,
                                    ),
                                  },
                                );
                              },
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Icon(
                                    Icons.person_outline,
                                    color: Color(0xFFA1A1A1),
                                    size: 24,
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20, 0, 0, 0),
                                    child: Text(
                                      'Impressum',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Montserrat',
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 0, 30),
                            child: InkWell(
                              onTap: () async {
                                context.pushNamed(
                                  'allergensAndAdditivesPage',
                                  extra: <String, dynamic>{
                                    kTransitionInfoKey: TransitionInfo(
                                      hasTransition: true,
                                      transitionType:
                                          PageTransitionType.leftToRight,
                                    ),
                                  },
                                );
                              },
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  FaIcon(
                                    FontAwesomeIcons.featherAlt,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 24,
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20, 0, 0, 0),
                                    child: Text(
                                      'Allergene und\nZusatzstoffe',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Montserrat',
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 0, 30),
                            child: InkWell(
                              onTap: () async {
                                context.pushNamed(
                                  'AGBPage',
                                  queryParams: {
                                    'webviewURL': serializeParam(
                                      homeAppsRecord!
                                          .restaurantUserAgreementLink,
                                      ParamType.String,
                                    ),
                                  }.withoutNulls,
                                  extra: <String, dynamic>{
                                    kTransitionInfoKey: TransitionInfo(
                                      hasTransition: true,
                                      transitionType:
                                          PageTransitionType.leftToRight,
                                    ),
                                  },
                                );
                              },
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  FaIcon(
                                    FontAwesomeIcons.solidHandshake,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 24,
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20, 0, 0, 0),
                                    child: Text(
                                      'AGB',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Montserrat',
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 0, 30),
                            child: InkWell(
                              onTap: () async {
                                context.pushNamed(
                                  'privacyPage',
                                  queryParams: {
                                    'webviewURL': serializeParam(
                                      homeAppsRecord!.restaurantPrivacyLink,
                                      ParamType.String,
                                    ),
                                  }.withoutNulls,
                                  extra: <String, dynamic>{
                                    kTransitionInfoKey: TransitionInfo(
                                      hasTransition: true,
                                      transitionType:
                                          PageTransitionType.leftToRight,
                                    ),
                                  },
                                );
                              },
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Icon(
                                    Icons.lock_outlined,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 24,
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20, 0, 0, 0),
                                    child: Text(
                                      'Datenschutz',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Montserrat',
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 0, 30),
                            child: InkWell(
                              onTap: () async {
                                await Share.share(
                                    '${homeAppsRecord!.restaurantName}, dein Lieferdienst in ${homeAppsRecord!.restaurantAddress} und Umgebung. Hol dir jetzt unsere App! Verfügbar in Google Play und App Store.         Google Play: https://play.google.com/store/apps/details?id=com.onlinefoodor.${homeAppsRecord!.restaurantAndroidShareID}         App Store: https://apps.apple.com/us/app/id${homeAppsRecord!.restaurantIOSShareID}');
                              },
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Icon(
                                    Icons.ios_share,
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                    size: 24,
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20, 0, 0, 0),
                                    child: Text(
                                      'App Teilen',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Montserrat',
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 30),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            SelectionArea(
                                child: Text(
                              'Powered By',
                              style: FlutterFlowTheme.of(context).bodyText1,
                            )),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 15, 0, 15),
                              child: InkWell(
                                onTap: () async {
                                  await launchURL(
                                      'http://www.onlinefoodor.com/');
                                },
                                child: Image.asset(
                                  'assets/images/onlineFoodor.jpeg',
                                  width: 150,
                                  height: 100,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SelectionArea(
                                child: Text(
                              '© Alle Rechte vorbehalten',
                              style: FlutterFlowTheme.of(context).bodyText1,
                            )),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          body: SafeArea(
            child: GestureDetector(
              onTap: () => FocusScope.of(context).unfocus(),
              child: Stack(
                children: [
                  SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Stack(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: 200,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Builder(
                                builder: (context) {
                                  final sliderImages =
                                      homeAppsRecord!.restarantSlider!.toList();
                                  return Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 200,
                                    child: Stack(
                                      children: [
                                        PageView.builder(
                                          controller: pageViewController ??=
                                              PageController(
                                                  initialPage: min(0,
                                                      sliderImages.length - 1)),
                                          scrollDirection: Axis.horizontal,
                                          itemCount: sliderImages.length,
                                          itemBuilder:
                                              (context, sliderImagesIndex) {
                                            final sliderImagesItem =
                                                sliderImages[sliderImagesIndex];
                                            return ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                              child: Image.network(
                                                sliderImagesItem,
                                                width: 100,
                                                height: 200,
                                                fit: BoxFit.cover,
                                              ),
                                            );
                                          },
                                        ),
                                        Align(
                                          alignment: AlignmentDirectional(0, 1),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 0, 10),
                                            child: smooth_page_indicator
                                                .SmoothPageIndicator(
                                              controller: pageViewController ??=
                                                  PageController(
                                                      initialPage: min(
                                                          0,
                                                          sliderImages.length -
                                                              1)),
                                              count: sliderImages.length,
                                              axisDirection: Axis.horizontal,
                                              onDotClicked: (i) {
                                                pageViewController!
                                                    .animateToPage(
                                                  i,
                                                  duration: Duration(
                                                      milliseconds: 500),
                                                  curve: Curves.ease,
                                                );
                                              },
                                              effect: smooth_page_indicator
                                                  .ExpandingDotsEffect(
                                                expansionFactor: 2,
                                                spacing: 8,
                                                radius: 16,
                                                dotWidth: 10,
                                                dotHeight: 10,
                                                dotColor: Color(0xFFD5D2D2),
                                                activeDotColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                paintStyle: PaintingStyle.fill,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(1, 0),
                              child: FlutterFlowIconButton(
                                borderColor: Colors.transparent,
                                borderRadius: 30,
                                borderWidth: 1,
                                buttonSize: 60,
                                fillColor: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                icon: Icon(
                                  Icons.menu_open_rounded,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 30,
                                ),
                                onPressed: () async {
                                  scaffoldKey.currentState!.openDrawer();
                                },
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(15, 15, 15, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: AutoSizeText(
                                  homeAppsRecord!.restaurantName!,
                                  style: FlutterFlowTheme.of(context).title3,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(15, 10, 15, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              SelectionArea(
                                  child: Text(
                                'Wir bieten',
                                style: FlutterFlowTheme.of(context)
                                    .subtitle2
                                    .override(
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w500,
                                    ),
                              )),
                              if (homeAppsRecord!.restarantOpeningPickup ??
                                  true)
                                SelectionArea(
                                    child: Text(
                                  ' Abholung',
                                  style: FlutterFlowTheme.of(context)
                                      .subtitle2
                                      .override(
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w500,
                                      ),
                                )),
                              if (homeAppsRecord!.restarantServicesDelivery! &&
                                  homeAppsRecord!.restarantOpeningPickup!)
                                SelectionArea(
                                    child: Text(
                                  ' und',
                                  style: FlutterFlowTheme.of(context)
                                      .subtitle2
                                      .override(
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w500,
                                      ),
                                )),
                              if (homeAppsRecord!.restarantServicesDelivery ??
                                  true)
                                SelectionArea(
                                    child: Text(
                                  ' Lieferung',
                                  style: FlutterFlowTheme.of(context)
                                      .subtitle2
                                      .override(
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w500,
                                      ),
                                )),
                              SelectionArea(
                                  child: Text(
                                ' an',
                                style: FlutterFlowTheme.of(context)
                                    .subtitle2
                                    .override(
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w500,
                                    ),
                              )),
                            ],
                          ),
                        ),
                        if (homeAppsRecord!.restarantServicesDelivery ?? true)
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(15, 20, 15, 0),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 0, 10),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Icon(
                                              Icons.access_time,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryColor,
                                              size: 24,
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(5, 0, 0, 0),
                                              child: SelectionArea(
                                                  child: Text(
                                                'Lieferzeiten',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyText1
                                                    .override(
                                                      fontFamily: 'Montserrat',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryColor,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                    ),
                                              )),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SelectionArea(
                                          child: Text(
                                        () {
                                          if (dateTimeFormat('EEEE',
                                                  getCurrentTimestamp) ==
                                              'Monday') {
                                            return homeAppsRecord!
                                                .retaurantDeliverTimeMonday!;
                                          } else if (dateTimeFormat('EEEE',
                                                  getCurrentTimestamp) ==
                                              'Tuesday') {
                                            return homeAppsRecord!
                                                .retaurantDeliverTimeTuesday!;
                                          } else if (dateTimeFormat('EEEE',
                                                  getCurrentTimestamp) ==
                                              'Wednesday') {
                                            return homeAppsRecord!
                                                .retaurantDeliverTimeWednesday!;
                                          } else if (dateTimeFormat('EEEE',
                                                  getCurrentTimestamp) ==
                                              'Thursday') {
                                            return homeAppsRecord!
                                                .retaurantDeliverTimeThurdsday!;
                                          } else if (dateTimeFormat('EEEE',
                                                  getCurrentTimestamp) ==
                                              'Friday') {
                                            return homeAppsRecord!
                                                .retaurantDeliverTimeFriday!;
                                          } else if (dateTimeFormat('EEEE',
                                                  getCurrentTimestamp) ==
                                              'Saturday') {
                                            return homeAppsRecord!
                                                .retaurantDeliverTimeSaturday!;
                                          } else if (dateTimeFormat('EEEE',
                                                  getCurrentTimestamp) ==
                                              'Sunday') {
                                            return homeAppsRecord!
                                                .retaurantDeliverTimeSunday!;
                                          } else {
                                            return ' ';
                                          }
                                        }(),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Montserrat',
                                              fontWeight: FontWeight.w500,
                                            ),
                                      )),
                                    ],
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 0, 10),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(10, 0, 0, 0),
                                              child: Icon(
                                                Icons.delivery_dining,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryColor,
                                                size: 24,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(5, 0, 0, 0),
                                              child: SelectionArea(
                                                  child: Text(
                                                'Lieferkosten',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyText1
                                                    .override(
                                                      fontFamily: 'Montserrat',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryColor,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                    ),
                                              )),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          if ((homeAppsRecord!
                                                      .restaurantDeliveryFee! >
                                                  0) &&
                                              (homeAppsRecord!
                                                      .restaurantDeliveryFee !=
                                                  null))
                                            SelectionArea(
                                                child: Text(
                                              homeAppsRecord!
                                                          .restaurantDeliveryFee! >
                                                      0
                                                  ? '${homeAppsRecord!.restaurantDeliveryFee?.toString()}€'
                                                  : ' ',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyText1
                                                  .override(
                                                    fontFamily: 'Montserrat',
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                            )),
                                          if ((homeAppsRecord!
                                                      .restaurantDeliveryFee ==
                                                  0) ||
                                              (homeAppsRecord!
                                                      .restaurantDeliveryFee ==
                                                  null))
                                            SelectionArea(
                                                child: Text(
                                              'Kostenlos',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyText1
                                                  .override(
                                                    fontFamily: 'Montserrat',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .tertiaryColor,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                            )),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 0, 10),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(10, 0, 0, 0),
                                              child: Icon(
                                                Icons.shopping_bag_outlined,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryColor,
                                                size: 24,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(5, 0, 0, 0),
                                              child: SelectionArea(
                                                  child: Text(
                                                'Min.',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyText1
                                                    .override(
                                                      fontFamily: 'Montserrat',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryColor,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                    ),
                                              )),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SelectionArea(
                                          child: Text(
                                        '${homeAppsRecord!.restaurantDeliveryMinOrderValue}€‎',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Montserrat',
                                              fontWeight: FontWeight.w500,
                                            ),
                                      )),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        if (homeAppsRecord!.restaurantPopUpTitle != null &&
                            homeAppsRecord!.restaurantPopUpTitle != '')
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                            child: InkWell(
                              onTap: () async {
                                await showModalBottomSheet(
                                  isScrollControlled: true,
                                  backgroundColor: Colors.transparent,
                                  context: context,
                                  builder: (context) {
                                    return Padding(
                                      padding:
                                          MediaQuery.of(context).viewInsets,
                                      child: PopUpWidget(),
                                    );
                                  },
                                ).then((value) => setState(() {}));
                              },
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                height: 60,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      15, 10, 15, 10),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Neuer Hinweis',
                                        style: FlutterFlowTheme.of(context)
                                            .subtitle1
                                            .override(
                                              fontFamily: 'Montserrat',
                                              color: Color(0xFFB52222),
                                              fontWeight: FontWeight.w600,
                                            ),
                                      ).animateOnPageLoad(animationsMap[
                                          'textOnPageLoadAnimation1']!),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                          child: InkWell(
                            onTap: () async {
                              await launchURL(
                                  homeAppsRecord!.restaurantAddressLink!);
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 80,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    15, 10, 15, 10),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(
                                      Icons.location_pin,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                      size: 24,
                                    ),
                                    Text(
                                      homeAppsRecord!.restaurantAddress!,
                                      style: FlutterFlowTheme.of(context)
                                          .subtitle1
                                          .override(
                                            fontFamily: 'Montserrat',
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                    Icon(
                                      Icons.arrow_forward_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 24,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        if (!FFAppState().accordianValue)
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                            child: InkWell(
                              onTap: () async {
                                setState(
                                    () => FFAppState().accordianValue = true);
                              },
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                height: 80,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      15, 10, 15, 10),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Icon(
                                        Icons.access_time,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryColor,
                                        size: 24,
                                      ),
                                      Text(
                                        () {
                                          if (dateTimeFormat('EEEE',
                                                  getCurrentTimestamp) ==
                                              'Monday') {
                                            return '${dateTimeFormat('Hm', homeAppsRecord!.restarantOpeningMonday)} - ${dateTimeFormat('Hm', homeAppsRecord!.restarantClosingMonday)}';
                                          } else if (dateTimeFormat('EEEE',
                                                  getCurrentTimestamp) ==
                                              'Tuesday') {
                                            return '${dateTimeFormat('Hm', homeAppsRecord!.restarantOpeningTuesday)} - ${dateTimeFormat('Hm', homeAppsRecord!.restarantClosingTuesday)}';
                                          } else if (dateTimeFormat('EEEE',
                                                  getCurrentTimestamp) ==
                                              'Wednesday') {
                                            return '${dateTimeFormat('Hm', homeAppsRecord!.restarantOpeningWednesday)} - ${dateTimeFormat('Hm', homeAppsRecord!.restarantClosingWednesday)}';
                                          } else if (dateTimeFormat('EEEE',
                                                  getCurrentTimestamp) ==
                                              'Thursday') {
                                            return '${dateTimeFormat('Hm', homeAppsRecord!.restarantOpeningThursday)} - ${dateTimeFormat('Hm', homeAppsRecord!.restarantClosingThursday)}';
                                          } else if (dateTimeFormat('EEEE',
                                                  getCurrentTimestamp) ==
                                              'Friday') {
                                            return '${dateTimeFormat('Hm', homeAppsRecord!.restarantOpeningFriday)} - ${dateTimeFormat('Hm', homeAppsRecord!.restarantClosingFriday)}';
                                          } else if (dateTimeFormat('EEEE',
                                                  getCurrentTimestamp) ==
                                              'Saturday') {
                                            return '${dateTimeFormat('Hm', homeAppsRecord!.restarantOpeningSaturday)} - ${dateTimeFormat('Hm', homeAppsRecord!.restarantClosingSaturday)}';
                                          } else if (dateTimeFormat('EEEE',
                                                  getCurrentTimestamp) ==
                                              'Sunday') {
                                            return '${dateTimeFormat('Hm', homeAppsRecord!.restarantOpeningSunday)} - ${dateTimeFormat('Hm', homeAppsRecord!.restarantClosingSunday)}';
                                          } else {
                                            return ' ';
                                          }
                                        }(),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Montserrat',
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          if (!functions.checkDates(() {
                                            if (dateTimeFormat('EEEE',
                                                    getCurrentTimestamp) ==
                                                'Monday') {
                                              return homeAppsRecord!
                                                  .restarantOpeningMonday;
                                            } else if (dateTimeFormat('EEEE',
                                                    getCurrentTimestamp) ==
                                                'Tuesday') {
                                              return homeAppsRecord!
                                                  .restarantOpeningTuesday;
                                            } else if (dateTimeFormat('EEEE',
                                                    getCurrentTimestamp) ==
                                                'Wednesday') {
                                              return homeAppsRecord!
                                                  .restarantOpeningWednesday;
                                            } else if (dateTimeFormat('EEEE',
                                                    getCurrentTimestamp) ==
                                                'Thursday') {
                                              return homeAppsRecord!
                                                  .restarantOpeningThursday;
                                            } else if (dateTimeFormat('EEEE',
                                                    getCurrentTimestamp) ==
                                                'Friday') {
                                              return homeAppsRecord!
                                                  .restarantOpeningFriday;
                                            } else if (dateTimeFormat('EEEE',
                                                    getCurrentTimestamp) ==
                                                'Saturday') {
                                              return homeAppsRecord!
                                                  .restarantOpeningSaturday;
                                            } else {
                                              return homeAppsRecord!
                                                  .restarantOpeningSunday;
                                            }
                                          }(), () {
                                            if (dateTimeFormat('EEEE',
                                                    getCurrentTimestamp) ==
                                                'Monday') {
                                              return homeAppsRecord!
                                                  .restarantClosingMonday;
                                            } else if (dateTimeFormat('EEEE',
                                                    getCurrentTimestamp) ==
                                                'Tuesday') {
                                              return homeAppsRecord!
                                                  .restarantClosingTuesday;
                                            } else if (dateTimeFormat('EEEE',
                                                    getCurrentTimestamp) ==
                                                'Wednesday') {
                                              return homeAppsRecord!
                                                  .restarantClosingWednesday;
                                            } else if (dateTimeFormat('EEEE',
                                                    getCurrentTimestamp) ==
                                                'Thursday') {
                                              return homeAppsRecord!
                                                  .restarantClosingThursday;
                                            } else if (dateTimeFormat('EEEE',
                                                    getCurrentTimestamp) ==
                                                'Friday') {
                                              return homeAppsRecord!
                                                  .restarantClosingFriday;
                                            } else if (dateTimeFormat('EEEE',
                                                    getCurrentTimestamp) ==
                                                'Saturday') {
                                              return homeAppsRecord!
                                                  .restarantClosingSaturday;
                                            } else {
                                              return homeAppsRecord!
                                                  .restarantClosingSunday;
                                            }
                                          }(), getCurrentTimestamp))
                                            Text(
                                              'Geöffnet',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyText1
                                                  .override(
                                                    fontFamily: 'Montserrat',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .tertiaryColor,
                                                  ),
                                            ).animateOnPageLoad(animationsMap[
                                                'textOnPageLoadAnimation2']!),
                                          if (functions.checkDates(() {
                                            if (dateTimeFormat('EEEE',
                                                    getCurrentTimestamp) ==
                                                'Monday') {
                                              return homeAppsRecord!
                                                  .restarantOpeningMonday;
                                            } else if (dateTimeFormat('EEEE',
                                                    getCurrentTimestamp) ==
                                                'Tuesday') {
                                              return homeAppsRecord!
                                                  .restarantOpeningTuesday;
                                            } else if (dateTimeFormat('EEEE',
                                                    getCurrentTimestamp) ==
                                                'Wednesday') {
                                              return homeAppsRecord!
                                                  .restarantOpeningWednesday;
                                            } else if (dateTimeFormat('EEEE',
                                                    getCurrentTimestamp) ==
                                                'Thursday') {
                                              return homeAppsRecord!
                                                  .restarantOpeningThursday;
                                            } else if (dateTimeFormat('EEEE',
                                                    getCurrentTimestamp) ==
                                                'Friday') {
                                              return homeAppsRecord!
                                                  .restarantOpeningFriday;
                                            } else if (dateTimeFormat('EEEE',
                                                    getCurrentTimestamp) ==
                                                'Saturday') {
                                              return homeAppsRecord!
                                                  .restarantOpeningSaturday;
                                            } else {
                                              return homeAppsRecord!
                                                  .restarantOpeningSunday;
                                            }
                                          }(), () {
                                            if (dateTimeFormat('EEEE',
                                                    getCurrentTimestamp) ==
                                                'Monday') {
                                              return homeAppsRecord!
                                                  .restarantClosingMonday;
                                            } else if (dateTimeFormat('EEEE',
                                                    getCurrentTimestamp) ==
                                                'Tuesday') {
                                              return homeAppsRecord!
                                                  .restarantClosingTuesday;
                                            } else if (dateTimeFormat('EEEE',
                                                    getCurrentTimestamp) ==
                                                'Wednesday') {
                                              return homeAppsRecord!
                                                  .restarantClosingWednesday;
                                            } else if (dateTimeFormat('EEEE',
                                                    getCurrentTimestamp) ==
                                                'Thursday') {
                                              return homeAppsRecord!
                                                  .restarantClosingThursday;
                                            } else if (dateTimeFormat('EEEE',
                                                    getCurrentTimestamp) ==
                                                'Friday') {
                                              return homeAppsRecord!
                                                  .restarantClosingFriday;
                                            } else if (dateTimeFormat('EEEE',
                                                    getCurrentTimestamp) ==
                                                'Saturday') {
                                              return homeAppsRecord!
                                                  .restarantClosingSaturday;
                                            } else {
                                              return homeAppsRecord!
                                                  .restarantClosingSunday;
                                            }
                                          }(), getCurrentTimestamp))
                                            Text(
                                              'Geschlossen',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyText1
                                                  .override(
                                                    fontFamily: 'Montserrat',
                                                    color: Color(0xFFB52222),
                                                  ),
                                            ).animateOnPageLoad(animationsMap[
                                                'textOnPageLoadAnimation3']!),
                                        ],
                                      ),
                                      Icon(
                                        Icons.keyboard_arrow_down_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        size: 24,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        if (FFAppState().accordianValue)
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 350,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  InkWell(
                                    onTap: () async {
                                      setState(() =>
                                          FFAppState().accordianValue = false);
                                    },
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 90,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            15, 10, 15, 10),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Icon(
                                              Icons.access_time,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryColor,
                                              size: 24,
                                            ),
                                            Text(
                                              () {
                                                if (dateTimeFormat('EEEE',
                                                        getCurrentTimestamp) ==
                                                    'Monday') {
                                                  return '${dateTimeFormat('Hm', homeAppsRecord!.restarantOpeningMonday)} - ${dateTimeFormat('Hm', homeAppsRecord!.restarantClosingMonday)}';
                                                } else if (dateTimeFormat(
                                                        'EEEE',
                                                        getCurrentTimestamp) ==
                                                    'Tuesday') {
                                                  return '${dateTimeFormat('Hm', homeAppsRecord!.restarantOpeningTuesday)} - ${dateTimeFormat('Hm', homeAppsRecord!.restarantClosingTuesday)}';
                                                } else if (dateTimeFormat(
                                                        'EEEE',
                                                        getCurrentTimestamp) ==
                                                    'Wednesday') {
                                                  return '${dateTimeFormat('Hm', homeAppsRecord!.restarantOpeningWednesday)} - ${dateTimeFormat('Hm', homeAppsRecord!.restarantClosingWednesday)}';
                                                } else if (dateTimeFormat(
                                                        'EEEE',
                                                        getCurrentTimestamp) ==
                                                    'Thursday') {
                                                  return '${dateTimeFormat('Hm', homeAppsRecord!.restarantOpeningThursday)} - ${dateTimeFormat('Hm', homeAppsRecord!.restarantClosingThursday)}';
                                                } else if (dateTimeFormat(
                                                        'EEEE',
                                                        getCurrentTimestamp) ==
                                                    'Friday') {
                                                  return '${dateTimeFormat('Hm', homeAppsRecord!.restarantOpeningFriday)} - ${dateTimeFormat('Hm', homeAppsRecord!.restarantClosingFriday)}';
                                                } else if (dateTimeFormat(
                                                        'EEEE',
                                                        getCurrentTimestamp) ==
                                                    'Saturday') {
                                                  return '${dateTimeFormat('Hm', homeAppsRecord!.restarantOpeningSaturday)} - ${dateTimeFormat('Hm', homeAppsRecord!.restarantClosingSaturday)}';
                                                } else if (dateTimeFormat(
                                                        'EEEE',
                                                        getCurrentTimestamp) ==
                                                    'Sunday') {
                                                  return '${dateTimeFormat('Hm', homeAppsRecord!.restarantOpeningSunday)} - ${dateTimeFormat('Hm', homeAppsRecord!.restarantClosingSunday)}';
                                                } else {
                                                  return ' 00:00 - 00:00';
                                                }
                                              }(),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyText1
                                                  .override(
                                                    fontFamily: 'Montserrat',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .alternate,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                if (!functions.checkDates(() {
                                                  if (dateTimeFormat('EEEE',
                                                          getCurrentTimestamp) ==
                                                      'Monday') {
                                                    return homeAppsRecord!
                                                        .restarantOpeningMonday;
                                                  } else if (dateTimeFormat(
                                                          'EEEE',
                                                          getCurrentTimestamp) ==
                                                      'Tuesday') {
                                                    return homeAppsRecord!
                                                        .restarantOpeningTuesday;
                                                  } else if (dateTimeFormat(
                                                          'EEEE',
                                                          getCurrentTimestamp) ==
                                                      'Wednesday') {
                                                    return homeAppsRecord!
                                                        .restarantOpeningWednesday;
                                                  } else if (dateTimeFormat(
                                                          'EEEE',
                                                          getCurrentTimestamp) ==
                                                      'Thursday') {
                                                    return homeAppsRecord!
                                                        .restarantOpeningThursday;
                                                  } else if (dateTimeFormat(
                                                          'EEEE',
                                                          getCurrentTimestamp) ==
                                                      'Friday') {
                                                    return homeAppsRecord!
                                                        .restarantOpeningFriday;
                                                  } else if (dateTimeFormat(
                                                          'EEEE',
                                                          getCurrentTimestamp) ==
                                                      'Saturday') {
                                                    return homeAppsRecord!
                                                        .restarantOpeningSaturday;
                                                  } else {
                                                    return homeAppsRecord!
                                                        .restarantOpeningSunday;
                                                  }
                                                }(), () {
                                                  if (dateTimeFormat('EEEE',
                                                          getCurrentTimestamp) ==
                                                      'Monday') {
                                                    return homeAppsRecord!
                                                        .restarantClosingMonday;
                                                  } else if (dateTimeFormat(
                                                          'EEEE',
                                                          getCurrentTimestamp) ==
                                                      'Tuesday') {
                                                    return homeAppsRecord!
                                                        .restarantClosingTuesday;
                                                  } else if (dateTimeFormat(
                                                          'EEEE',
                                                          getCurrentTimestamp) ==
                                                      'Wednesday') {
                                                    return homeAppsRecord!
                                                        .restarantClosingWednesday;
                                                  } else if (dateTimeFormat(
                                                          'EEEE',
                                                          getCurrentTimestamp) ==
                                                      'Thursday') {
                                                    return homeAppsRecord!
                                                        .restarantClosingThursday;
                                                  } else if (dateTimeFormat(
                                                          'EEEE',
                                                          getCurrentTimestamp) ==
                                                      'Friday') {
                                                    return homeAppsRecord!
                                                        .restarantClosingFriday;
                                                  } else if (dateTimeFormat(
                                                          'EEEE',
                                                          getCurrentTimestamp) ==
                                                      'Saturday') {
                                                    return homeAppsRecord!
                                                        .restarantClosingSaturday;
                                                  } else {
                                                    return homeAppsRecord!
                                                        .restarantClosingSunday;
                                                  }
                                                }(), getCurrentTimestamp))
                                                  Text(
                                                    'Geöffnet',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily:
                                                              'Montserrat',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .tertiaryColor,
                                                        ),
                                                  ).animateOnPageLoad(animationsMap[
                                                      'textOnPageLoadAnimation4']!),
                                                if (functions.checkDates(() {
                                                  if (dateTimeFormat('EEEE',
                                                          getCurrentTimestamp) ==
                                                      'Monday') {
                                                    return homeAppsRecord!
                                                        .restarantOpeningMonday;
                                                  } else if (dateTimeFormat(
                                                          'EEEE',
                                                          getCurrentTimestamp) ==
                                                      'Tuesday') {
                                                    return homeAppsRecord!
                                                        .restarantOpeningTuesday;
                                                  } else if (dateTimeFormat(
                                                          'EEEE',
                                                          getCurrentTimestamp) ==
                                                      'Wednesday') {
                                                    return homeAppsRecord!
                                                        .restarantOpeningWednesday;
                                                  } else if (dateTimeFormat(
                                                          'EEEE',
                                                          getCurrentTimestamp) ==
                                                      'Thursday') {
                                                    return homeAppsRecord!
                                                        .restarantOpeningThursday;
                                                  } else if (dateTimeFormat(
                                                          'EEEE',
                                                          getCurrentTimestamp) ==
                                                      'Friday') {
                                                    return homeAppsRecord!
                                                        .restarantOpeningFriday;
                                                  } else if (dateTimeFormat(
                                                          'EEEE',
                                                          getCurrentTimestamp) ==
                                                      'Saturday') {
                                                    return homeAppsRecord!
                                                        .restarantOpeningSaturday;
                                                  } else {
                                                    return homeAppsRecord!
                                                        .restarantOpeningSunday;
                                                  }
                                                }(), () {
                                                  if (dateTimeFormat('EEEE',
                                                          getCurrentTimestamp) ==
                                                      'Monday') {
                                                    return homeAppsRecord!
                                                        .restarantClosingMonday;
                                                  } else if (dateTimeFormat(
                                                          'EEEE',
                                                          getCurrentTimestamp) ==
                                                      'Tuesday') {
                                                    return homeAppsRecord!
                                                        .restarantClosingTuesday;
                                                  } else if (dateTimeFormat(
                                                          'EEEE',
                                                          getCurrentTimestamp) ==
                                                      'Wednesday') {
                                                    return homeAppsRecord!
                                                        .restarantClosingWednesday;
                                                  } else if (dateTimeFormat(
                                                          'EEEE',
                                                          getCurrentTimestamp) ==
                                                      'Thursday') {
                                                    return homeAppsRecord!
                                                        .restarantClosingThursday;
                                                  } else if (dateTimeFormat(
                                                          'EEEE',
                                                          getCurrentTimestamp) ==
                                                      'Friday') {
                                                    return homeAppsRecord!
                                                        .restarantClosingFriday;
                                                  } else if (dateTimeFormat(
                                                          'EEEE',
                                                          getCurrentTimestamp) ==
                                                      'Saturday') {
                                                    return homeAppsRecord!
                                                        .restarantClosingSaturday;
                                                  } else {
                                                    return homeAppsRecord!
                                                        .restarantClosingSunday;
                                                  }
                                                }(), getCurrentTimestamp))
                                                  Text(
                                                    'Geschlossen',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily:
                                                              'Montserrat',
                                                          color:
                                                              Color(0xFFB52222),
                                                        ),
                                                  ).animateOnPageLoad(animationsMap[
                                                      'textOnPageLoadAnimation5']!),
                                              ],
                                            ),
                                            Icon(
                                              Icons.keyboard_arrow_up_rounded,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              size: 24,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20, 0, 20, 10),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        SelectionArea(
                                            child: Text(
                                          'Montag : ',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Montserrat',
                                                fontWeight: FontWeight.normal,
                                              ),
                                        )),
                                        if ((homeAppsRecord!
                                                    .restarantOpeningMonday !=
                                                null) &&
                                            (homeAppsRecord!
                                                    .restarantClosingMonday !=
                                                null))
                                          SelectionArea(
                                              child: Text(
                                            '${dateTimeFormat('Hm', homeAppsRecord!.restarantOpeningMonday)} - ${dateTimeFormat('Hm', homeAppsRecord!.restarantClosingMonday)}',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Montserrat',
                                                  fontWeight: FontWeight.normal,
                                                ),
                                          )),
                                        if (!((homeAppsRecord!
                                                    .restarantOpeningMonday !=
                                                null) &&
                                            (homeAppsRecord!
                                                    .restarantClosingMonday !=
                                                null)))
                                          SelectionArea(
                                              child: Text(
                                            'Ruhetag',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Montserrat',
                                                  color: Color(0xFFB52222),
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          )),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20, 0, 20, 10),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        SelectionArea(
                                            child: Text(
                                          'Dientag : ',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Montserrat',
                                                fontWeight: FontWeight.normal,
                                              ),
                                        )),
                                        if ((homeAppsRecord!
                                                    .restarantOpeningMonday !=
                                                null) &&
                                            (homeAppsRecord!
                                                    .restarantClosingMonday !=
                                                null))
                                          SelectionArea(
                                              child: Text(
                                            '${dateTimeFormat('Hm', homeAppsRecord!.restarantOpeningTuesday)} - ${dateTimeFormat('Hm', homeAppsRecord!.restarantClosingTuesday)}',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Montserrat',
                                                  fontWeight: FontWeight.normal,
                                                ),
                                          )),
                                        if (!((homeAppsRecord!
                                                    .restarantOpeningTuesday !=
                                                null) &&
                                            (homeAppsRecord!
                                                    .restarantClosingTuesday !=
                                                null)))
                                          SelectionArea(
                                              child: Text(
                                            'Ruhetag',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Montserrat',
                                                  color: Color(0xFFB52222),
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          )),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20, 0, 20, 10),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        SelectionArea(
                                            child: Text(
                                          'Mittwoch : ',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Montserrat',
                                                fontWeight: FontWeight.normal,
                                              ),
                                        )),
                                        if ((homeAppsRecord!
                                                    .restarantOpeningMonday !=
                                                null) &&
                                            (homeAppsRecord!
                                                    .restarantClosingMonday !=
                                                null))
                                          SelectionArea(
                                              child: Text(
                                            '${dateTimeFormat('Hm', homeAppsRecord!.restarantOpeningWednesday)} - ${dateTimeFormat('Hm', homeAppsRecord!.restarantClosingWednesday)}',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Montserrat',
                                                  fontWeight: FontWeight.normal,
                                                ),
                                          )),
                                        if (!((homeAppsRecord!
                                                    .restarantOpeningWednesday !=
                                                null) &&
                                            (homeAppsRecord!
                                                    .restarantClosingWednesday !=
                                                null)))
                                          SelectionArea(
                                              child: Text(
                                            'Ruhetag',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Montserrat',
                                                  color: Color(0xFFB52222),
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          )),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20, 0, 20, 10),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        SelectionArea(
                                            child: Text(
                                          'Donnerstag : ',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Montserrat',
                                                fontWeight: FontWeight.normal,
                                              ),
                                        )),
                                        if ((homeAppsRecord!
                                                    .restarantOpeningMonday !=
                                                null) &&
                                            (homeAppsRecord!
                                                    .restarantClosingMonday !=
                                                null))
                                          SelectionArea(
                                              child: Text(
                                            '${dateTimeFormat('Hm', homeAppsRecord!.restarantOpeningThursday)} - ${dateTimeFormat('Hm', homeAppsRecord!.restarantClosingThursday)}',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Montserrat',
                                                  fontWeight: FontWeight.normal,
                                                ),
                                          )),
                                        if (!((homeAppsRecord!
                                                    .restarantOpeningThursday !=
                                                null) &&
                                            (homeAppsRecord!
                                                    .restarantClosingThursday !=
                                                null)))
                                          SelectionArea(
                                              child: Text(
                                            'Ruhetag',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Montserrat',
                                                  color: Color(0xFFB52222),
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          )),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20, 0, 20, 10),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        SelectionArea(
                                            child: Text(
                                          'Freitag : ',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Montserrat',
                                                fontWeight: FontWeight.normal,
                                              ),
                                        )),
                                        if ((homeAppsRecord!
                                                    .restarantOpeningMonday !=
                                                null) &&
                                            (homeAppsRecord!
                                                    .restarantClosingMonday !=
                                                null))
                                          SelectionArea(
                                              child: Text(
                                            '${dateTimeFormat('Hm', homeAppsRecord!.restarantOpeningFriday)} - ${dateTimeFormat('Hm', homeAppsRecord!.restarantClosingFriday)}',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Montserrat',
                                                  fontWeight: FontWeight.normal,
                                                ),
                                          )),
                                        if (!((homeAppsRecord!
                                                    .restarantOpeningFriday !=
                                                null) &&
                                            (homeAppsRecord!
                                                    .restarantClosingFriday !=
                                                null)))
                                          SelectionArea(
                                              child: Text(
                                            'Ruhetag',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Montserrat',
                                                  color: Color(0xFFB52222),
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          )),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20, 0, 20, 10),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        SelectionArea(
                                            child: Text(
                                          'Samstag : ',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Montserrat',
                                                fontWeight: FontWeight.normal,
                                              ),
                                        )),
                                        if ((homeAppsRecord!
                                                    .restarantOpeningMonday !=
                                                null) &&
                                            (homeAppsRecord!
                                                    .restarantClosingMonday !=
                                                null))
                                          SelectionArea(
                                              child: Text(
                                            '${dateTimeFormat('Hm', homeAppsRecord!.restarantOpeningSaturday)} - ${dateTimeFormat('Hm', homeAppsRecord!.restarantClosingSaturday)}',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Montserrat',
                                                  fontWeight: FontWeight.normal,
                                                ),
                                          )),
                                        if (!((homeAppsRecord!
                                                    .restarantOpeningSaturday !=
                                                null) &&
                                            (homeAppsRecord!
                                                    .restarantClosingSaturday !=
                                                null)))
                                          SelectionArea(
                                              child: Text(
                                            'Ruhetag',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Montserrat',
                                                  color: Color(0xFFB52222),
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          )),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20, 0, 20, 10),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        SelectionArea(
                                            child: Text(
                                          'Sonntag : ',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Montserrat',
                                                fontWeight: FontWeight.normal,
                                              ),
                                        )),
                                        if ((homeAppsRecord!
                                                    .restarantOpeningMonday !=
                                                null) &&
                                            (homeAppsRecord!
                                                    .restarantClosingMonday !=
                                                null))
                                          SelectionArea(
                                              child: Text(
                                            '${dateTimeFormat('Hm', homeAppsRecord!.restarantOpeningSunday)} - ${dateTimeFormat('Hm', homeAppsRecord!.restarantClosingSunday)}',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Montserrat',
                                                  fontWeight: FontWeight.normal,
                                                ),
                                          )),
                                        if (!((homeAppsRecord!
                                                    .restarantOpeningSunday !=
                                                null) &&
                                            (homeAppsRecord!
                                                    .restarantClosingSunday !=
                                                null)))
                                          SelectionArea(
                                              child: Text(
                                            'Ruhetag',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Montserrat',
                                                  color: Color(0xFFB52222),
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          )),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        if (homeAppsRecord!.restaurantReservationLink != null &&
                            homeAppsRecord!.restaurantReservationLink != '')
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 20, 0, 100),
                            child: InkWell(
                              onTap: () async {
                                context.pushNamed(
                                  'tableReservationPage',
                                  queryParams: {
                                    'webviewURL': serializeParam(
                                      homeAppsRecord!.restaurantReservationLink,
                                      ParamType.String,
                                    ),
                                  }.withoutNulls,
                                );
                              },
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                height: 80,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      15, 10, 15, 10),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Icon(
                                        Icons.local_dining,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryColor,
                                        size: 24,
                                      ),
                                      Text(
                                        'Tischreservierung',
                                        style: FlutterFlowTheme.of(context)
                                            .subtitle1
                                            .override(
                                              fontFamily: 'Montserrat',
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                      Icon(
                                        Icons.arrow_forward_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        size: 24,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                  if (homeAppsRecord!.restaurantOrderLink != null &&
                      homeAppsRecord!.restaurantOrderLink != '')
                    Align(
                      alignment: AlignmentDirectional(4.1, 1.01),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(5, 0, 5, 5),
                        child: InkWell(
                          onTap: () async {
                            context.pushNamed(
                              'orderPage',
                              queryParams: {
                                'webviewURL': serializeParam(
                                  homeAppsRecord!.restaurantOrderLink,
                                  ParamType.String,
                                ),
                              }.withoutNulls,
                            );
                          },
                          child: Container(
                            width: double.infinity,
                            height: 70,
                            decoration: BoxDecoration(
                              color:
                                  FlutterFlowTheme.of(context).secondaryColor,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10, 10, 10, 10),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 15, 0),
                                    child: Text(
                                      'Bestellen',
                                      style: FlutterFlowTheme.of(context)
                                          .title1
                                          .override(
                                            fontFamily: 'Montserrat',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                  ),
                                  Icon(
                                    Icons.arrow_forward_outlined,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    size: 24,
                                  ),
                                ],
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
        );
      },
    );
  }
}
