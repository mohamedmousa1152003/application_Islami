import 'package:first_islami/core/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import 'core/provider.dart';
import 'home_screen/home_layout.dart';
import 'moduls/hadeth/hadeth_details.dart';
import 'moduls/quran/sura_view.dart';
import 'moduls/splash/splash.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => AppProvider(), child: const myapplication()));
}

class myapplication extends StatelessWidget {
  const myapplication({super.key});

  @override
  Widget build(BuildContext context) {
    var appProvider = Provider.of<AppProvider>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale(appProvider.currentLocale),
      theme: themeData.lightTheme,
      darkTheme: themeData.darkTheme,
      themeMode: appProvider.currentTheme,
      initialRoute: splash.routename,
      routes: {
        splash.routename: (context) => splash(),
        home.routename: (context) => home(),
        suraView.routeName: (context) => suraView(),
        hadethDetails.routeName: (context) => hadethDetails(),
      },
      home: splash(),
    );
  }
}
