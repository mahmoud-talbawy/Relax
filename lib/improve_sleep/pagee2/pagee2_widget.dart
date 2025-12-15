import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'pagee2_model.dart';
export 'pagee2_model.dart';

class Pagee2Widget extends StatefulWidget {
  const Pagee2Widget({super.key});

  static String routeName = 'pagee2';
  static String routePath = '/pagee2';

  @override
  State<Pagee2Widget> createState() => _Pagee2WidgetState();
}

class _Pagee2WidgetState extends State<Pagee2Widget>
    with TickerProviderStateMixin {
  late Pagee2Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Pagee2Model());

    animationsMap.addAll({
      'textOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 300.ms),
          FadeEffect(
            curve: Curves.easeOut,
            delay: 300.0.ms,
            duration: 1220.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'buttonOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 790.ms),
          FadeEffect(
            curve: Curves.easeOut,
            delay: 790.0.ms,
            duration: 1000.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 790.0.ms,
            duration: 1000.0.ms,
            begin: Offset(0.0, 62.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'buttonOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 900.ms),
          FadeEffect(
            curve: Curves.easeOut,
            delay: 900.0.ms,
            duration: 900.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 900.0.ms,
            duration: 900.0.ms,
            begin: Offset(0.0, 80.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Stack(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFF1B0D9F), Color(0xE709042C)],
                  stops: [0.0, 1.0],
                  begin: AlignmentDirectional(0.0, -1.0),
                  end: AlignmentDirectional(0, 1.0),
                ),
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(35.0, 0.0, 35.0, 0.0),
                    child: Text(
                      'Do you need help falling asleep right now',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            font: GoogleFonts.salsa(
                              fontWeight: FontWeight.w300,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                            color: Color(0xEDFFFFFF),
                            fontSize: 23.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w300,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                    ).animateOnPageLoad(
                        animationsMap['textOnPageLoadAnimation']!),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(25.0, 30.0, 25.0, 0.0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      context.pushNamed(Pagee3Widget.routeName);

                      await UserInfoTable().update(
                        data: {
                          'fall_sleep': 1,
                        },
                        matchingRows: (rows) => rows.eqOrNull(
                          'id',
                          currentUserUid,
                        ),
                      );
                    },
                    text: 'Yes, i\'m ready to sleep',
                    options: FFButtonOptions(
                      width: double.infinity,
                      height: 80.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: Color(0x002885F0),
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                font: GoogleFonts.salsa(
                                  fontWeight: FontWeight.normal,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontStyle,
                                ),
                                color: Color(0xFF4095F6),
                                fontSize: 20.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.normal,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .fontStyle,
                              ),
                      elevation: 3.0,
                      borderSide: BorderSide(
                        color: Color(0xFF4095F6),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(3.0),
                      hoverColor: Color(0xFF024DA1),
                    ),
                  ).animateOnPageLoad(
                      animationsMap['buttonOnPageLoadAnimation1']!),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(25.0, 20.0, 25.0, 0.0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      context.pushNamed(Pagee3Widget.routeName);

                      await UserInfoTable().update(
                        data: {
                          'fall_sleep': 0,
                        },
                        matchingRows: (rows) => rows.eqOrNull(
                          'id',
                          currentUserUid,
                        ),
                      );
                    },
                    text: 'No, i\'m not ready for sleep',
                    options: FFButtonOptions(
                      width: double.infinity,
                      height: 80.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: Color(0x004095F6),
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                font: GoogleFonts.salsa(
                                  fontWeight: FontWeight.normal,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontStyle,
                                ),
                                color: Color(0xFF4095F6),
                                fontSize: 20.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.normal,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .fontStyle,
                              ),
                      elevation: 3.0,
                      borderSide: BorderSide(
                        color: Color(0xFF4095F6),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(3.0),
                      hoverColor: Color(0xFF024DA1),
                      hoverTextColor: Colors.white,
                    ),
                  ).animateOnPageLoad(
                      animationsMap['buttonOnPageLoadAnimation2']!),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
