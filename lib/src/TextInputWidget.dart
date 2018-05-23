import 'package:flutter/material.dart';

class TextInputWidget extends StatefulWidget {
  @override
  TextInputWidgetState createState() => TextInputWidgetState();
}

class TextInputWidgetState extends State<TextInputWidget> {
  final TextEditingController _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Flexible(
            child: TextField(
              controller: _textController,
              onSubmitted: _handleSubmit,
              decoration: InputDecoration.collapsed(hintText: "Write a memo"),
            ),
          ),
          Container(
            child: IconButton(
              icon: Icon(Icons.send),
              onPressed: () => _handleSubmit(_textController.text),
            ),
            margin: EdgeInsets.symmetric(horizontal: 4.0),
          ),
        ],
      ),
      margin: EdgeInsets.symmetric(horizontal: 8.0),
    );
  }

  void _handleSubmit(String text) {
    _textController.clear();
  }
}
