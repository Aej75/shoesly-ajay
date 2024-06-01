// ignore_for_file: use_build_context_synchronously

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AppImagePicker {
  File? file;
  final ImagePicker _picker = ImagePicker();

  Future<File?> showAppImagePicker({required BuildContext context}) async {
    await showModalBottomSheet<File?>(
      context: context,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(16))),
      builder: (context) => SafeArea(
        child: SizedBox(
          child: Wrap(
            children: <Widget>[
              ListTile(
                leading: const Icon(Icons.camera),
                title: const Text('Camera'),
                onTap: () async {
                  file = await appImagePick(
                    source: ImageSource.camera,
                  );
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.photo_library),
                title: const Text('Gallery'),
                onTap: () async {
                  file = await appImagePick(
                    source: ImageSource.gallery,
                  );
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );

    return file;
  }

  Future<File?> appImagePick({
    ImageSource source = ImageSource.gallery,
  }) async {
    final pickedFile =
        await _picker.pickImage(source: source, imageQuality: 25);
    if (pickedFile != null) {
      file = File(pickedFile.path);
    }

    return file;
  }
}
