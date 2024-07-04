// ignore: file_names
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:image_picker/image_picker.dart';
import 'package:skripsi_aidil/pages/hasilScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ImagePicker _picker = ImagePicker();

  Future<void> _openCamera() async {
    final XFile? image = await _picker.pickImage(source: ImageSource.camera);
    if (image != null) {
      // Navigate to the next screen with the image path
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => HasilScreen(imagePath: image.path),
        ),
      );
    }
  }

  Future<void> _openGallery() async {
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      // Navigate to the next screen with the image path
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => HasilScreen(imagePath: image.path),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                flex: 4,
                child: Container(
                  width: double.infinity,
                  color: Colors.red,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 254,
                        height: 205,
                        child: Image.asset("images/image1.png"),
                      ),
                      Container(
                        margin: const EdgeInsets.only(
                            right: 17, left: 18, bottom: 8),
                        child: const Text(
                          "Selamat Datang di ",
                          style: TextStyle(
                            color: Colors.amber,
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 17, left: 18),
                        child: const Text(
                          "MeatChecker ",
                          style: TextStyle(
                            color: Colors.amber,
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        margin:
                            const EdgeInsets.only(right: 17, left: 18, top: 12),
                        child: const Text(
                          "Deteksi daging sapi dan kerbau dengan cepat ",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 17, left: 18),
                        child: const Text(
                          "dan akurat menggunakan MeatChecker.",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  width: double.infinity,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 4 / 6 -
                50, // Mengatur posisi agar berada di pertemuan merah dan hitam
            left: 0,
            right: 0,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: _openCamera,
                    child: Container(
                      width: 105,
                      height: 106,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.amber,
                      ),
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        child: Center(
                          child: Image.asset("images/cam.png"),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: _openGallery,
                    child: Container(
                      width: 105,
                      height: 106,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.amber,
                      ),
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        child: Center(
                          child: Image.asset("images/galeri.png"),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}


