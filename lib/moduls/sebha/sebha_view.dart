import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../core/provider.dart';

class sebha extends StatefulWidget {
  @override
  State<sebha> createState() => _sebhaState();
}

class _sebhaState extends State<sebha> {
  int counter = 0;
  String text = "سبحان الله";

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var appProvider = Provider.of<AppProvider>(context);

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Stack(alignment: Alignment.topCenter, children: [
                Container(
                  margin: const EdgeInsets.only(
                    top: 82,
                  ),
                  child: Image.asset(appProvider.isDark()
                      ? "assets/image/dark_body_of_seb7a.png"
                      : "assets/image/body_of_seb7a.png"),
                ),
                Container(
                    margin: const EdgeInsets.only(left: 65),
                    child: Image.asset(appProvider.isDark()
                        ? "assets/image/dark_head_of_seb7a.png"
                        : "assets/image/head_of_seb7a.png")),
              ]),
            ),
            const SizedBox(height: 25),
            Text(
              "عدد التسبيحات",
              style: theme.textTheme.bodyLarge,
            ),
            const SizedBox(height: 25),
            Container(
              alignment: Alignment.center,
              height: 81,
              width: 69,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                color: const Color(0xFFBC9A68).withOpacity(0.5),
              ),
              child: Text(
                "$counter",
                textAlign: TextAlign.center,
                style: theme.textTheme.bodyLarge,
              ),
            ),
            const SizedBox(height: 25),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: theme.primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {
                setState(() {
                  if (counter < 33) {
                    counter++;
                    text = "سبحان الله";
                  } else if (counter < 66) {
                    counter++;
                    text = "الحمد لله";
                  } else if (counter < 99) {
                    counter++;
                    text = "لا إلهَ إلاَّ اللَّه ";
                  } else if (counter < 132) {
                    counter++;
                    text = "الله وأكبر ";
                  } else {
                    counter = 0;
                  }
                });
              },
              child: Text(text, style: theme.textTheme.bodyLarge),
            ),
          ],
        ),
      ),
    );
  }

  valueDetalis(String value) {
    setState(() {
      value = text;
    });
  }
}
