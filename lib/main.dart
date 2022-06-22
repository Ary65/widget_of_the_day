import 'package:flutter/material.dart';
import 'package:widget_of_the_day/widgets/clip_oval/clipoval.dart';
import 'package:widget_of_the_day/widgets/cupertino_action_sheet/cupertino_action_sceet.dart';
import 'package:widget_of_the_day/widgets/image/image.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const ClipOvalWidget(),
      // home: ImageWidget(),
      home: const CupertinoActionSheetWidgt(
        title: 'CupertionActivity',
      ),
    );
  }
}
