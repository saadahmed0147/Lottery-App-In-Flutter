import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

Random random = Random();
int x = 0;
int num = 3;

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 55, 78, 78),
          title: const Center(
            child: Text(
              'Lottery App',
              style: TextStyle(fontSize: 30),
            ),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(child: Text('Winning Number is $num')),
            Container(
              height: 250,
              width: 300,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 212, 221, 221),
                borderRadius: BorderRadius.circular(10),
              ),
              child: x == num
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.done,
                          color: Colors.green,
                        ),
                        Text(
                          'Congratulations, You won! $x...',
                          textAlign: TextAlign.center,
                        ),
                      ],
                    )
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.error,
                          color: Colors.red,
                        ),
                        Text(
                          'Better luck next time, Your number is $x...\n  Try Again',
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              x = random.nextInt(10);
              setState(() {});
            },
            child: const Icon(Icons.refresh)),
      ),
    );
  }
}
