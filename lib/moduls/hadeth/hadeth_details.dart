import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../core/provider.dart';
import 'hadeth_view.dart';

class hadethDetails extends StatefulWidget {
  static String routeName = "Hadeth_Details";

  const hadethDetails({super.key});

  @override
  State<hadethDetails> createState() => _hadethDetailsState();
}

// ignore: camel_case_types
class _hadethDetailsState extends State<hadethDetails> {
  String content = "";
  List<String> allVerses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments
        as HadethContent; //علشان اعرف انادي علي اسم ورقم السورة

    var appProvider = Provider.of<AppProvider>(context);

    var theme = Theme.of(context);
    var mediaQuery = MediaQuery.of(context).size;

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
              Text(
                args.title,
                style: theme.textTheme.bodyLarge!.copyWith(
                  color: theme.colorScheme.onSecondary,
                ),
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
                    args.content,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.bodySmall!.copyWith(
                      color: theme.colorScheme.onSecondary,
                    ),
                  ),
                  itemCount: 1,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
