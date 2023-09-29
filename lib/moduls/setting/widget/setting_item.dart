import 'package:flutter/material.dart';

typedef SettingsOptionClicked = void Function();

class settingItems extends StatelessWidget {
  final String settingTitle, settingOption;
  final SettingsOptionClicked onOptionTaped;

  const settingItems(
      {super.key,
      required this.settingTitle,
      required this.settingOption,
      required this.onOptionTaped});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          settingTitle,
          style: theme.textTheme.bodyLarge,
          textAlign: TextAlign.start,
        ),
        GestureDetector(
          onTap: onOptionTaped,
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
            padding: const EdgeInsets.symmetric(horizontal: 10),
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(
              border: Border.all(
                color: theme.primaryColor,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(settingOption),
                Icon(
                  Icons.arrow_drop_down,
                  size: 30,
                  color: theme.primaryColor,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
