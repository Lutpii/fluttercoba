import 'package:flutter/material.dart';

main() {
  runApp(const TasyaApp());
}

class TasyaApp extends StatelessWidget {
  const TasyaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Selamat Datang",
            style: TextStyle(fontSize: 40),
          ),
          backgroundColor: const Color.fromARGB(255, 7, 234, 255),
          bottom: const PreferredSize(
              preferredSize: Size.fromHeight(150), child: Text("Hai Semuanya")),
        ),
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Row(children: [
            FloatingActionButton(
              onPressed: () {
                count--;
                setState(() {});
              },
              child: const Icon(Icons.remove),
            ),
            Expanded(child: Row()),
            FloatingActionButton(
              onPressed: () {
                count++;
                setState(() {});
              },
              child: const Icon(Icons.add),
            ),
          ]),
        ),
        body: Center(
            child: Text(
          "$count",
          style: const TextStyle(fontSize: 45),
        )));
  }
}