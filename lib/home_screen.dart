import 'package:flutter/material.dart';
import 'package:webview/find_zip_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('우편번호 검색'),
      ),
      body: Column(
        children: [
          Row(
            children: [
              const SizedBox(
                width: 100,
                child: TextField(),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const FindZipScreen()),
                  );
                },
                child: const Text('우편번호 찾기'),
              ),
            ],
          ),
          const TextField(),
          Row(
            children: const [
              Expanded(child: TextField()),
              SizedBox(width: 30),
              Expanded(child: TextField()),
            ],
          ),
        ],
      ),
    );
  }
}
