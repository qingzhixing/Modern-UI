import 'package:flutter/material.dart';
import 'mordern_theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MordernHome(),
    );
  }
}

class MordernHome extends StatefulWidget {
  const MordernHome({super.key});

  @override
  State<StatefulWidget> createState() => MordernHomeState();
}

class MordernHomeState extends State<MordernHome> {
  bool isDarkMode = false;

  @override
  void initState() {
    super.initState();
  }

  MordernTheme currentTheme() {
    if (isDarkMode) {
      return darkTheme;
    } else {
      return lightTheme;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: currentTheme().backgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                color: currentTheme().backgroundColor,
                borderRadius: const BorderRadius.all(Radius.circular(40)),
                boxShadow: [
                  // Right Down Shadow
                  BoxShadow(
                    color: currentTheme().shadowColor,
                    offset: const Offset(5.0, 5.0),
                    blurRadius: 15.0,
                    spreadRadius: 1,
                  ),
                  // Left Up Shadow
                  BoxShadow(
                    offset: const Offset(-5.0, -5.0),
                    blurRadius: 15.0,
                    spreadRadius: 1,
                    color: currentTheme().highlightColor,
                  ),
                ],
              ),
              child: Icon(
                Icons.android,
                size: 80,
                color: currentTheme().iconColor,
              ),
            ),
            const Padding(padding: EdgeInsets.only(top: 50)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Dark Mode Button
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      isDarkMode = true;
                    });
                  },
                  style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.black),
                  ),
                  child: const Text(
                    "Dark",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                const Padding(padding: EdgeInsets.only(left: 20)),
                // Light Mode Button
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      isDarkMode = false;
                    });
                  },
                  style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.white),
                  ),
                  child: const Text(
                    "Light",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
