import 'package:first_islami/moduls/quran/quran_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import '../../core/provider.dart';

class suraView extends StatefulWidget {
  static String routeName = "suraView";

  @override
  State<suraView> createState() => _suraViewState();
}

class _suraViewState extends State<suraView> {
  String content = "";
  List<String> allVerses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments
        as SuraDetails; //علشان اعرف انادي علي اسم ورقم السورة
    var appProvider = Provider.of<AppProvider>(context);

    var theme = Theme.of(context);
    var mediaQuery = MediaQuery.of(context).size;

    if (content.isEmpty) readFiel(args.suraNumber);

    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                appProvider.isDark()
                    ? "assets/image/bg.png"
                    : "assets/image/background_light.png",
              ),
              fit: BoxFit.cover)),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: theme.scaffoldBackgroundColor,
          title: const Text("إسلامي"),
        ),
        body: Container(
          margin:
              const EdgeInsets.only(top: 30, left: 30, right: 30, bottom: 120),
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 15),
          //علشان اسم السوره يكون نازل شويه
          height: mediaQuery.height,
          width: mediaQuery.width,
          decoration: BoxDecoration(
            color: theme.colorScheme.primary,
            borderRadius: BorderRadius.circular(25),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "سورة ${args.suraName}",
                    style: theme.textTheme.bodyLarge!.copyWith(
                      color: theme.colorScheme.onSecondary,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.play_circle,
                    size: 32,
                    color: theme.colorScheme.onSecondary,
                  ),
                ],
              ),
              Divider(
                color: theme.primaryColor,
                thickness: 1.2,
                indent: 30,
                endIndent: 30,
              ),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) => Text(
                    " (${index + 1}) ${allVerses[index]} ",
                    style: theme.textTheme.bodySmall!.copyWith(
                      color: theme.colorScheme.onSecondary,
                      height: 1.5,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  itemCount: allVerses.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  readFiel(String index) async {
    String text = await rootBundle.loadString("assets/fiels/$index.txt");
    content = text;
    setState(() {
      allVerses = content.split("\n");
    });
  }
}
