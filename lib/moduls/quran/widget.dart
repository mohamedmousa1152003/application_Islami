import 'package:flutter/material.dart';

class quranItem extends StatelessWidget {
  final String suraName;
  final String suraNumber;

  const quranItem(
      {super.key, required this.suraName, required this.suraNumber});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Row(
      children: [
        Expanded(
            child: Text(
          suraNumber,
          textAlign: TextAlign.center,
          style: theme.textTheme.bodyMedium,
        )),
        Container(
          width: 3,
          height: 25,
          color: theme.primaryColor,
        ),
        Expanded(
            child: Text(suraName,
                textAlign: TextAlign.center,
                style: theme.textTheme.bodyMedium)),
      ],
    );
  }
}
