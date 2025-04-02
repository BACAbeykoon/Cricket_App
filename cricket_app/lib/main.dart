import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MycricketApp()));
}

class MycricketApp extends StatefulWidget {
  const MycricketApp({super.key});

  @override
  State<MycricketApp> createState() => _MycricketAppState();
}

class _MycricketAppState extends State<MycricketApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 243, 240, 240),
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
        title: Text(
          "My Cricket App",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Image.asset("assets/bat.jpg", height: 150, width: 150),
                    SizedBox(height: 20),
                    Text(
                      "Runs",
                      style: TextStyle(fontSize: 20, color: Colors.red),
                    ),
                    SizedBox(height: 10),
                    Text("0", style: TextStyle(fontSize: 20)),
                  ],
                ),
                Column(
                  children: [
                    Image.asset("assets/ball.jpg", height: 150, width: 150),
                    SizedBox(height: 20),
                    Text(
                      "Balls",
                      style: TextStyle(fontSize: 20, color: Colors.red),
                    ),
                    SizedBox(height: 10),
                    Text("6", style: TextStyle(fontSize: 20)),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [Text("Score", style: TextStyle(fontSize: 20))],
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(onPressed: () {}, child: Text("Bat")),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
