import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class UploadImage extends StatefulWidget {
  const UploadImage({super.key});

  @override
  State<UploadImage> createState() => _UploadImageState();
}

class _UploadImageState extends State<UploadImage> {
  File? image;
  final _picker = ImagePicker();
  bool showSpiner = false;
  Future getImage() async {
    final pickFile =
        await _picker.pickImage(source: ImageSource.gallery, imageQuality: 80);
    if (pickFile != null) {
      image = File(pickFile.path);
      setState(() {});
    } else {
      print('No image selected');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Upload file'),
      ),
      body: Container(),
    );
  }
}
