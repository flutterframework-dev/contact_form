import 'package:flutter/material.dart';
import 'package:app/config/palette.dart' as palette;

class LabelText extends StatelessWidget {
  final String label;
  const LabelText({Key key, @required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        label,
        style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 12,
          color: palette.textColor,
        ),
      ),
    );
  }
}
