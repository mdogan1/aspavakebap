import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ImprintPageWidget extends StatefulWidget {
  const ImprintPageWidget({
    Key? key,
    this.impressum,
  }) : super(key: key);

  final String? impressum;

  @override
  _ImprintPageWidgetState createState() => _ImprintPageWidgetState();
}

class _ImprintPageWidgetState extends State<ImprintPageWidget> {
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
          'Impressum',
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
                SelectionArea(
                    child: Text(
                  widget.impressum!,
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.normal,
                      ),
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
