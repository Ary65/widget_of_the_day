import 'package:flutter/material.dart';

class ImageWidget extends StatefulWidget {
  ImageWidget({Key? key}) : super(key: key);

  @override
  State<ImageWidget> createState() => _ImageWidgetState();
}

class _ImageWidgetState extends State<ImageWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.network(
          'https://images.unsplash.com/photo-1648737154448-ccf0cafae1c2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
          fit: BoxFit.cover,
          color: Colors.red,
          colorBlendMode: BlendMode.darken,
          semanticLabel: 'Dash mascot',
          loadingBuilder: (context, child, progress) {
            return progress == null
                ? child
                : const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: LinearProgressIndicator(
                      color: Colors.purpleAccent,
                      minHeight: 20,
                    ),
                  );
          },
        ),
      ),
    );
  }
}
