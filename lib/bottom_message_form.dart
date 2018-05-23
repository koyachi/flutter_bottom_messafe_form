library bottom_message_form;
import 'package:flutter/material.dart';
import 'src/TextInputWidget.dart';

class BottomMessageForm extends StatelessWidget {
  const BottomMessageForm({
    Key key,
    this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        this.child,
        Divider(height: 0.3),
        TextInputWidget(),
      ],
    );
  }
}
