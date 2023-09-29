import 'package:first_islami/moduls/setting/widget/select_option.dart';
import 'package:first_islami/moduls/setting/widget/unselect_option.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../../../core/provider.dart';

class themeBottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appProvider = Provider.of<AppProvider>(context);
    var locale = AppLocalizations.of(context)!;

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        GestureDetector(
            onTap: () {
              appProvider.changeTheme(ThemeMode.dark);
              Navigator.pop(context);
            },
            child: appProvider.isDark()
                ? selectOption(
                    selectedTitle: locale.dark,
                  )
                : unselect(unselectedTitel: locale.dark)),
        const SizedBox(height: 30),
        GestureDetector(
          onTap: () {
            appProvider.changeTheme(ThemeMode.light);
            Navigator.pop(context);
          },
          child: appProvider.isDark()
              ? unselect(unselectedTitel: locale.light)
              : selectOption(
                  selectedTitle: locale.light,
                ),
        )
      ]),
    );
  }
}
