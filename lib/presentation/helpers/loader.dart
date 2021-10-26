import 'package:flutter/material.dart';

/// General-purpose loader in the app
class Loader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation<Color>(
          Colors.white,
        ),
        backgroundColor: Color(0xFFB30000),
      ),
    );
  }
}

/// Can be used only inside Columns, Rows or Flex widgets
class ExpandedLoader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Loader(),
    );
  }
}
