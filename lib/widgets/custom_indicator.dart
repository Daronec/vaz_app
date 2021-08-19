import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:vaz_mobile/style/app_colors.dart';

class CircularProgressIndicatorWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        backgroundColor: Colors.grey.withOpacity(0.5),
        strokeWidth: 1,
        valueColor: AlwaysStoppedAnimation<Color>(AppColors.light_yellow),
      ),
    );
  }
}

void showLoadingIndicator(BuildContext _context) {
  showWhiteLayer(
    barrierDismissible: false,
    context: _context,
    builder: (context) => WillPopScope(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
        child: Center(
          child: Container(
            color: Colors.transparent,
            child: CircularProgressIndicator(
              backgroundColor: Colors.grey.withOpacity(0.5),
              strokeWidth: 1,
              valueColor: AlwaysStoppedAnimation<Color>(AppColors.light_yellow),
            ),
          ),
        ),
      ),
      onWillPop: () async {
        return false;
      },
    ),
  );
}

Future<void> showWhiteLayer<T>({
  required BuildContext context,
  bool barrierDismissible = true,
  @Deprecated(
      'Instead of using the "child" argument, return the child from a closure '
          'provided to the "builder" argument. This will ensure that the BuildContext '
          'is appropriate for widgets built in the dialog.')
  // required Widget child,
  required WidgetBuilder builder,
}) {
  assert(debugCheckHasMaterialLocalizations(context));

  final ThemeData theme = Theme.of(context);
  return showGeneralDialog(
    context: context,
    pageBuilder: (BuildContext buildContext, Animation<double> animation,
        Animation<double> secondaryAnimation) {
      return SafeArea(
        child: Builder(builder: (BuildContext context) {
          return Theme(data: theme, child: Builder(builder: builder));
        }),
      );
    },
    barrierDismissible: false,
    barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
    barrierColor: Colors.white10,
    transitionDuration: const Duration(milliseconds: 150),
    transitionBuilder: _buildMaterialDialogTransitions,
  );
}

Widget _buildMaterialDialogTransitions(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child) {
  return FadeTransition(
    opacity: CurvedAnimation(
      parent: animation,
      curve: Curves.easeOut,
    ),
    child: child,
  );
}
