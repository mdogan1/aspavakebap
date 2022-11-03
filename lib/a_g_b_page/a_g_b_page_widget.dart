import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_web_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AGBPageWidget extends StatefulWidget {
  const AGBPageWidget({
    Key? key,
    this.webviewURL,
  }) : super(key: key);

  final String? webviewURL;

  @override
  _AGBPageWidgetState createState() => _AGBPageWidgetState();
}

class _AGBPageWidgetState extends State<AGBPageWidget> {
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
          'AGB',
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
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              FlutterFlowWebView(
                url: widget.webviewURL!,
                bypass: true,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 1,
                verticalScroll: true,
                horizontalScroll: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
