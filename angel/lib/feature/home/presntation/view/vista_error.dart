import 'package:flutter/material.dart';

class Failure extends StatelessWidget {
  const Failure({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand, 
        children: [
          Opacity(
            opacity: 0.3,
            child: Image.network(
              "https://i.imgur.com/EMG3QVT.png",
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(
                  Icons.error,
                  color: Color.fromARGB(255, 247, 21, 5),
                  size: 80,
                ),
                const SizedBox(height: 20),
                const Text(
                  "𝙇𝙤 𝙨𝙚𝙣𝙩𝙞𝙢𝙤𝙨, 𝙝𝙪𝙗𝙤 𝙪𝙣 𝙚𝙧𝙧𝙤𝙧",
                  style: TextStyle(
                    fontSize: 18,
                    color: Color.fromARGB(242, 214, 51, 2),
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    
                  },
                  child: const Text("𝙍𝙚𝙞𝙣𝙩𝙚𝙣𝙩𝙖𝙧"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
