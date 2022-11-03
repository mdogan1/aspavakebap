import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AllergensAndAdditivesPageWidget extends StatefulWidget {
  const AllergensAndAdditivesPageWidget({Key? key}) : super(key: key);

  @override
  _AllergensAndAdditivesPageWidgetState createState() =>
      _AllergensAndAdditivesPageWidgetState();
}

class _AllergensAndAdditivesPageWidgetState
    extends State<AllergensAndAdditivesPageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
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
          'Allergene und Zusatzstoffe',
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
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      SelectionArea(
                          child: Text(
                        'Allergene: ',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w600,
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
                          'a:  Enthält glutenhaltige getreide(Weizen, Gerste, Roggen, Hafer, Dinkel)/-Erzeugnisse\nb:  Enthält Krebstiere/-Erzeugnisse \nc:  Enthält Ei/-Erzeugnisse\nd:  Enthält Fisch/-Erzeugnisse\ne:  Enthält Erdnüsse/-Erzeugnisse\nf:   Enthält Sojabohnen/-Erzeugnisse\ng:  Enthält Milch/-Erzeugnisse (laktosehaltig)\nh:   Enthält Schalenfrüchte/Nüsse/-Erzeugnisse\ni :   Enthält Sellerie/-Erzeugnisse\nj :   Enthält Senf/-Erzeugnisse \nk:   Enthält Sesamsamen/-Erzeugnisse\nl :   Enhält Schwefeloxid/-Sulfite\nm:  Enthält Lupine/-Erzeugnisse\nn:   Enthält Weichteile/-Erzeugnisse',
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.normal,
                                  ),
                        )),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        SelectionArea(
                            child: Text(
                          'Zusatzstoffe: ',
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w600,
                                  ),
                        )),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: SelectionArea(
                            child: Text(
                          '1 mit Farbstoff\n2 mit Konservierungsstoff\n3 mit Antioxidationsmittel\n4 mit Geschmacksverstärker\n5 geschwärzt\n6 mit Süßungsmittel\n7 enthält eine Phenylalaninquelle\n8 phosphathaltig\n9 chininhaltig\n10 coffeinhaltig',
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.normal,
                                  ),
                        )),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        SelectionArea(
                            child: Text(
                          'Wissen, was drin ist',
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w600,
                                  ),
                        )),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: SelectionArea(
                            child: Text(
                          'Genau zu wissen, was im Essen ist, ist nicht nur für bewussten Genuss,\nsondern auch, in Zeiten von Allergien und Lebensmittelunverträglichkeiten,\nür Deine Gesundheit und Wohlbefinden essentiell.',
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.normal,
                                  ),
                        )),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
