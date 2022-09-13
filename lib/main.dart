import 'package:flutter/material.dart';
import 'package:spotify_responsive_clone/ui/features/page_view/page_view_switcher.dart';

void main(List<String> args) => runApp(
      const MyApp(),
      // DevicePreview(
      //   builder: (context) => const MyApp(),
      // ),
    );

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Spotify Responsive Clone',
      theme: ThemeData(
        primaryColor: Colors.green,
      ),
      // locale: DevicePreview.locale(context),
      // builder: DevicePreview.appBuilder,
      home: const PageViewSwitcher(),
    );
  }
}
