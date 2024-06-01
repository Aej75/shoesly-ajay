import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'app_snackbar.dart';

final ImagePicker picker = ImagePicker();
void showImagePickerModal(
    {required BuildContext context,
    VoidCallback Function()? cameraOntap,
    VoidCallback Function()? galleryOntap}) {
  showModalBottomSheet<Widget>(
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
                onTap: cameraOntap),
            ListTile(
              leading: const Icon(Icons.photo_library),
              title: const Text('Gallery'),
              onTap: galleryOntap,
            ),
          ],
        ),
      ),
    ),
  );
}

Future<XFile?> getImagesFromGallery() async {
  XFile? result;
  try {
    result = await picker.pickImage(source: ImageSource.gallery);
  } on Exception catch (e) {
    showSnackbar(e.toString());
  }
  return result;
}

Future<XFile?> getImagesFromCamera() async {
  XFile? result;
  try {
    result = await picker.pickImage(source: ImageSource.camera);
  } on Exception catch (e) {
    showSnackbar(e.toString());
  }
  return result;
}

String? getFileExtension(String filename) {
  try {
    return filename.split('.').last;
  } catch (e) {
    return null;
  }
}
