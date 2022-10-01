import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:device_preview/device_preview.dart';
import 'package:widgets/facebook_ui/widgets/aspect_ratio.dart';

import 'widgets/text.dart';
import 'widgets/container.dart';
import 'widgets/column.dart';
import 'widgets/row.dart';
import 'widgets/stack.dart';
import 'widgets/scaffold.dart';
import 'widgets/safe_area.dart';
import 'widgets/single_child_scroll_view.dart';
import 'widgets/list_view.dart';
import 'widgets/custom_font.dart';
import 'widgets/custom_icons.dart';
import 'widgets/my_images.dart';

import 'facebook_ui/facebook_ui.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (_) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      builder: DevicePreview.appBuilder,
      locale: DevicePreview.locale(context),
      home: FacebookUI(),
      theme: ThemeData(
        fontFamily: 'Nunito',
      ),
    );
  }
}

