import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

import '../video_function.dart';

class sasasasasasasa extends StatefulWidget {
  @override
  State<sasasasasasasa> createState() => _sasasasasasasaState();
}

class _sasasasasasasaState extends State<sasasasasasasa> {
  File? file;
  String? name;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MaterialButton(
          color: Colors.indigo[900],
          onPressed: () async {
            await getfile();
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => VideoFunctions(sub1: file!),
              ),
            );
          },
          child: Text(
            'pick video',
            style: TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
            ),
          ),
        ),
      ),
    );
  }

  getfile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['mp3', 'mp4'],
    );

    if (result != null) {
      File c = File(result.files.single.path.toString());
      setState(() {
        file = c;
        name = result.names.toString();
      });
    }
  }
}
