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
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: currentTheme().backgroundColor,
          title: Container(
            // padding: const EdgeInsets.only(top: 10, bottom: 10),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              color: currentTheme().highlightColor,
              boxShadow: [
                BoxShadow(
                  color: currentTheme().shadowColor,
                  offset: const Offset(2, 0),
                  blurRadius: 5,
                  spreadRadius: 0,
                ),
                BoxShadow(
                  color: currentTheme().highlightColor,
                  offset: const Offset(-2, 0),
                  blurRadius: 10,
                  spreadRadius: 0,
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    const Padding(padding: EdgeInsets.only(top: 2)),
                    Text(
                      "Mordern UI",
                      style: TextStyle(
                        color: currentTheme().iconColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Padding(padding: EdgeInsets.only(top: 2)),
                    const Text(
                      "@qingzhixing",
                      style: TextStyle(
                        color: Colors.pink,
                        fontWeight: FontWeight.w300,
                        fontSize: 14,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    const Padding(padding: EdgeInsets.only(top: 2)),
                  ],
                ),
                const Padding(padding: EdgeInsets.only(left: 10)),
                const Icon(Icons.cable_outlined, color: Colors.cyan)
              ],
            ),
          )),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                  color: currentTheme().backgroundColor,
                  // borderRadius: const BorderRadius.all(Radius.circular(40)),
                  shape: BoxShape.circle,
                  boxShadow: [
                    // Right Down Shadow
                    BoxShadow(
                      color: currentTheme().shadowColor,
                      offset: const Offset(5.0, 5.0),
                      blurRadius: 10.0,
                      spreadRadius: 1,
                    ),
                    // Left Up Shadow
                    BoxShadow(
                      offset: const Offset(-5.0, -5.0),
                      blurRadius: 10.0,
                      spreadRadius: 1,
                      color: currentTheme().highlightColor,
                    ),
                  ],
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: currentTheme().gradientColors,
                    stops: const [0.1, 0.3, 0.7, 0.9],
                  )),
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
