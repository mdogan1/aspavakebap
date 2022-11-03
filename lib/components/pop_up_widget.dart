import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';

class PopUpWidget extends StatefulWidget {
  const PopUpWidget({Key? key}) : super(key: key);

  @override
  _PopUpWidgetState createState() => _PopUpWidgetState();
}

class _PopUpWidgetState extends State<PopUpWidget>
    with TickerProviderStateMixin {
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
        List<AppsRecord> containerAppsRecordList = snapshot.data!;
        final containerAppsRecord = containerAppsRecordList.isNotEmpty
            ? containerAppsRecordList.first
            : null;
        return Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 1,
          decoration: BoxDecoration(
            color: Color(0xAEFFFFFF),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 8, 16, 12),
                child: Container(
                  width: double.infinity,
                  height: 400,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 4,
                        color: Color(0x2B202529),
                        offset: Offset(0, 2),
                      )
                    ],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 30,
                            borderWidth: 1,
                            buttonSize: 60,
                            icon: Icon(
                              Icons.arrow_back_sharp,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 30,
                            ),
                            onPressed: () async {
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.network(
                                containerAppsRecord!.restaurantPopUpImage!,
                                width: 160,
                                height: 100,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(12, 15, 16, 15),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                                child: Text(
                                  containerAppsRecord!.restaurantPopUpTitle!,
                                  style: FlutterFlowTheme.of(context).bodyText1,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(12, 0, 16, 8),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                                child: Text(
                                  containerAppsRecord!
                                      .restaurantPopUpDescription!,
                                  style: FlutterFlowTheme.of(context).bodyText1,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(12, 20, 16, 8),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FFButtonWidget(
                              onPressed: () async {
                                await launchURL(
                                    containerAppsRecord!.restaurantPopUpLink!);
                              },
                              text: 'Nächste',
                              options: FFButtonOptions(
                                width: 130,
                                height: 40,
                                color:
                                    FlutterFlowTheme.of(context).primaryColor,
                                textStyle: FlutterFlowTheme.of(context)
                                    .subtitle2
                                    .override(
                                      fontFamily: 'Montserrat',
                                      color: Colors.white,
                                    ),
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
