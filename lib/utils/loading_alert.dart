import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

import 'package:study_abroad_consultant/utils/colors.dart';

class XLoadingAlert extends StatelessWidget {
  const XLoadingAlert({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: LoadingAnimationWidget.inkDrop(
        color: XColors.primary,
        size: 50,
      ),
    );
  }
}
