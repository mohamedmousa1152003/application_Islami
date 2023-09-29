import 'package:first_islami/moduls/setting/widget/select_option.dart';
import 'package:first_islami/moduls/setting/widget/unselect_option.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../core/provider.dart';

class language extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appProvider = Provider.of<AppProvider>(context);

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        GestureDetector(
            onTap: () {
              appProvider.changeLanguage("en");
              Navigator.pop(context);
            },
            child: appProvider.currentLocale == "en"
                ? const selectOption(
                    selectedTitle: "English",
                  )
                : const unselect(unselectedTitel: "English")),
        SizedBox(height: 30),
        GestureDetector(
            onTap: () {
              appProvider.changeLanguage("ar");
              Navigator.pop(context);
            },
            child: appProvider.currentLocale == "ar"
                ? const selectOption(
                    selectedTitle: "عربي",
                  )
                : const unselect(unselectedTitel: "عربي")),
      ]),
    );
  }
}
