import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../core/provider.dart';
import '../moduls/hadeth/hadeth_view.dart';
import '../moduls/quran/quran_view.dart';
import '../moduls/radio/radio_view.dart';
import '../moduls/sebha/sebha_view.dart';
import '../moduls/setting/setting_view.dart';

class home extends StatefulWidget {
  static String routename = "home";

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  int selecctedIndex = 0;

  List<Widget> screen = [
    setting(),
    radio(),
    sebha(),
    hadeth(),
    quran(),
  ];

  @override
  Widget build(BuildContext context) {
    var locale = AppLocalizations.of(context)!;
    var appProvider = Provider.of<AppProvider>(context);
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(appProvider.backgroundImage()),
            fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text(locale.islami),
          elevation: 0,
        ),
        body: screen[selecctedIndex],
        bottomNavigationBar: BottomNavigationBar(
          onTap: (int index) {
            setState(() {
              selecctedIndex = index;
            });
          },
          currentIndex: selecctedIndex,
          items: [
            BottomNavigationBarItem(
                icon: const Icon(Icons.settings), label: locale.setting),
            BottomNavigationBarItem(
                icon: const ImageIcon(
                  AssetImage("assets/image/radio.png"),
                ),
                label: locale.radio),
            BottomNavigationBarItem(
                icon: const ImageIcon(
                  AssetImage("assets/image/sebha.png"),
                ),
                label: locale.tasbeh),
            BottomNavigationBarItem(
                icon: const ImageIcon(
                  AssetImage("assets/image/quran-quran-svgrepo-com.png"),
                ),
                label: locale.hadeth),
            BottomNavigationBarItem(
                icon: const ImageIcon(
                  AssetImage("assets/image/quran.png"),
                ),
                label: locale.quran),
          ],
        ),
      ),
    );
  }
}
