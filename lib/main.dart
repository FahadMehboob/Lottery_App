import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random random = Random();
  var x = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.orange.withOpacity(0.7),
          title: const Text(
            "Lottery App",
            style: TextStyle(fontSize: 24),
          ),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/lottery_logo.jpg',
              height: 200,
              width: 300,
            ),
            const Center(
              child: Text(
                "Lottery Winning Number is 10",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: x == 10
                  ? Container(
                      height: 200,
                      width: 350,
                      decoration: BoxDecoration(
                        color: Colors.green.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.done_all_rounded,
                            color: Colors.green,
                            size: 70,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Congratulation\n You Won The Lottery, Your Number is $x \n",
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    )
                  : Container(
                      height: 200,
                      width: 350,
                      decoration: BoxDecoration(
                        color: Colors.red.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.error_outline_rounded,
                            color: Colors.red,
                            size: 70,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Better Luck Next Time Your Number is $x \n TRY AGAIN",
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.orange.withOpacity(0.6),
            child: const Icon(Icons.refresh),
            onPressed: () {
              x = random.nextInt(20).toInt();
              setState(() {});
            }),
      ),
    );
  }
}
