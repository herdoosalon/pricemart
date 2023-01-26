import '../components/nav_bar_music_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_web_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AllproductsWidget extends StatefulWidget {
  const AllproductsWidget({Key? key}) : super(key: key);

  @override
  _AllproductsWidgetState createState() => _AllproductsWidgetState();
}

class _AllproductsWidgetState extends State<AllproductsWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBtnText,
      body: ListView(
        padding: EdgeInsets.zero,
        scrollDirection: Axis.vertical,
        children: [
          Align(
            alignment: AlignmentDirectional(0, 0),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
              child: FlutterFlowWebView(
                url: 'https://price-mart-4500.myshopify.com/collections/all',
                bypass: false,
                height: 812,
                verticalScroll: false,
                horizontalScroll: false,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
            child: NavBarMusicWidget(),
          ),
        ],
      ),
    );
  }
}
