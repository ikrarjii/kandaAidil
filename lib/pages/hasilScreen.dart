import 'package:flutter/material.dart';
import 'package:skripsi_aidil/widget/progress_bar.dart';
import 'dart:io';


class HasilScreen extends StatelessWidget {
  final String imagePath;
  const HasilScreen({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 58),
                width: 294,
                height: 294,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Image.file(File(imagePath)),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(15),
              child: const Text(
                "Sapi",
                style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            CustomProgressBar(),
            SizedBox(
              height: 10,
            ),
            CustomProgressBar(),
            SizedBox(
              height: 10,
            ),
            CustomProgressBar(),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
