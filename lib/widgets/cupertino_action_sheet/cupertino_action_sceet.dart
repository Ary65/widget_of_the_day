// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
 

class CupertinoActionSheetWidgt extends StatelessWidget {
  final String title;
  const CupertinoActionSheetWidgt({
    Key? key,
    required this.title,
  }) : super(key: key);

  // This shows a CupertinoModalPopup which hosts a CupertinoActionSheet.
  void _showActionSheet(BuildContext context) {
    showCupertinoModalPopup<void>(
        context: context,
        builder: (BuildContext context) {
          return CupertinoActionSheet(
            title: Text(title),
            message: const Text('message'),
            actions: <CupertinoActionSheetAction>[
              CupertinoActionSheetAction(
                /// This parameter indicates the action would be a default
                /// defualt behavior, turns the action's text to bold text.
                isDefaultAction: true,

                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Default Action'),
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(title),
      ),
      child: Center(
        child: CupertinoButton(
            child: const Text('Cupertino Activity Sheet'),
            onPressed: () => _showActionSheet(context)),
      ),
    );
  }
}
