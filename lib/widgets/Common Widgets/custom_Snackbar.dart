import 'package:flutter/material.dart';

import '../../globals.dart';

void customSnackBar(String content) {
  snackbarKey.currentState?.showSnackBar(SnackBar(
    content: Text(content),
    backgroundColor: Colors.blue,
  ));
}
