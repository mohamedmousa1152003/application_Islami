import 'package:flutter/material.dart';

class radio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/image/radio_image.png"),
          Text(
            "إذاعة القرآن الكريم",
            style: theme.textTheme.bodyLarge,
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.fast_rewind,
                    color: theme.primaryColor,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.stop,
                    size: 35,
                    color: theme.primaryColor,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.fast_forward,
                    color: theme.primaryColor,
                  )),
            ],
          )
        ],
      ),
    );
  }
}
