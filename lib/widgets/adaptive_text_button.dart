import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AdaptiveTextButton extends StatelessWidget {
  final String text;
  final Function handler;

  // ignore: use_key_in_widget_constructors
  const AdaptiveTextButton(this.text, this.handler);

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoButton(
            child: Text(
              text,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            onPressed: handler,
          )
        : TextButton(
            style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(
                    Theme.of(context).primaryColor)),
            child: Text(
              text,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            onPressed: handler,
          );
  }
}
