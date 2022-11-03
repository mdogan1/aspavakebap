import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutUsPageWidget extends StatefulWidget {
  const AboutUsPageWidget({
    Key? key,
    this.restaurantName,
  }) : super(key: key);

  final String? restaurantName;

  @override
  _AboutUsPageWidgetState createState() => _AboutUsPageWidgetState();
}

class _AboutUsPageWidgetState extends State<AboutUsPageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
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
            context.pop();
          },
        ),
        title: Text(
          'Über uns',
          style: FlutterFlowTheme.of(context).title3.override(
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w500,
              ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 2,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(15, 20, 15, 0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SelectionArea(
                        child: Text(
                      'Wir von ',
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.normal,
                          ),
                    )),
                    SelectionArea(
                        child: Text(
                      widget.restaurantName!,
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.normal,
                          ),
                    )),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: SelectionArea(
                          child: Text(
                        'bieten Gerichte von hervorragender Qualität und laden Sie herzlich ein, unsere köstliche Küche kennenzulernen. Der Schlüssel zu unserem Erfolg ist einfach: Wir bieten hochwertige Gerichte, die stets den Gaumen erfreuen.\n\nWir sind stolz darauf, unseren Kunden schmackhafte und authentische Gerichte zu servieren. zB.: .Genießen Sie wahre Gaumenfreuden. Wählen Sie dazu ein Getränk aus. Und vor allem: Entspannen Sie sich! Wir bedanken uns herzlich bei Ihnen für Ihre fortwährende Unterstützung.\n\nWir akzeptieren:',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.normal,
                            ),
                      )),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                  child: Image.asset(
                    'assets/images/onlinefoodorPayments.jpeg',
                    width: MediaQuery.of(context).size.width,
                    height: 60,
                    fit: BoxFit.fitWidth,
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
