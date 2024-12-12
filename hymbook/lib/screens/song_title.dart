import 'package:flutter/material.dart';

class SongDetailPage extends StatelessWidget {
  final String songTitle;
  final String songLyrics; // Field for lyrics

  const SongDetailPage({Key? key, required this.songTitle, required this.songLyrics}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> paragraphs = songLyrics.split('\n\n');

    return Scaffold(
      appBar: AppBar(
        title: const Text('U.A.F.I.C.A', style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.green[800],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                songTitle,
                style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              ...paragraphs.map((paragraph) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 16.0), // Space between paragraphs
                  child: Text(
                    paragraph,
                    style:const TextStyle(fontSize: 18, height: 1.5), // Adjust height for better readability
                  ),
                );
              }).toList(),
            ],
          ),
        ),
      ),
    );
  }
}