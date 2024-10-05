import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'welcomepage_copy_model.dart';
export 'welcomepage_copy_model.dart';

class WelcomepageCopyWidget extends StatefulWidget {
  /// Create a new page and name it WelcomePage.
  /// Set the background color to a soft gradient of light blue (#00BCD4) and
  /// purple (#673AB7).
  /// Add an image widget at the top of the page and upload the QuizRush logo.
  /// Align it to the center with a width of 180px.
  /// Below the logo, add a button labeled "Let’s Play". Style the button with a
  /// vibrant yellow background (#FFC107), white text, rounded corners with a
  /// 20px border radius, and add padding to make the button prominent.
  /// Set the action for the button to navigate to the QuizPage when clicked.
  ///
  const WelcomepageCopyWidget({super.key});

  @override
  State<WelcomepageCopyWidget> createState() => _WelcomepageCopyWidgetState();
}

class _WelcomepageCopyWidgetState extends State<WelcomepageCopyWidget> {
  late WelcomepageCopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WelcomepageCopyModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Container(
          width: MediaQuery.sizeOf(context).width * 1.0,
          height: MediaQuery.sizeOf(context).height * 1.0,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF00BCD4), Color(0xFF673AB7)],
              stops: [0.0, 1.0],
              begin: AlignmentDirectional(0.0, -1.0),
              end: AlignmentDirectional(0, 1.0),
            ),
          ),
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 24.0, 24.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FFButtonWidget(
                  onPressed: () async {
                    context.goNamed(
                      'Login2',
                      extra: <String, dynamic>{
                        kTransitionInfoKey: const TransitionInfo(
                          hasTransition: true,
                          transitionType: PageTransitionType.topToBottom,
                        ),
                      },
                    );
                  },
                  text: 'Let\'s Play',
                  options: FFButtonOptions(
                    width: 200.0,
                    height: 60.0,
                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    iconPadding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: const Color(0xFFFFC107),
                    textStyle:
                        FlutterFlowTheme.of(context).headlineSmall.override(
                              fontFamily: 'Inter Tight',
                              color: Colors.white,
                              letterSpacing: 0.0,
                            ),
                    elevation: 3.0,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ].divide(const SizedBox(height: 48.0)),
            ),
          ),
        ),
      ),
    );
  }
}
