import 'package:flutter/material.dart';

class Failure extends StatelessWidget {
  const Failure({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Center(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(Icons.error, color: const Color.fromARGB(255, 247, 21, 5), size: 80),
        const SizedBox(height: 20),
        Text("𝙇𝙤 𝙨𝙚𝙣𝙩𝙞𝙢𝙤𝙨, 𝙝𝙪𝙗𝙤 𝙪𝙣 𝙚𝙧𝙧𝙤𝙧",
          style: TextStyle(fontSize: 18, color:Color.fromARGB(242, 214, 51, 2)),
        ),
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed: () {
          },
          child: Text("𝙍𝙚𝙞𝙣𝙩𝙚𝙣𝙩𝙖𝙧"),
        ),
      ],
    ),
    )
  );
}
}