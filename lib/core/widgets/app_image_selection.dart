import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../constants/app_colors.dart';

class AppImageSelection extends StatefulWidget {
  final double height;
  final double width;
  final double iconSize;
  final double padding;

  final Color outlineColor;

  const AppImageSelection(
      {super.key,
      this.height = 300,
      this.width = 300,
      this.outlineColor = colorLightBlue,
      this.iconSize = 80,
      this.padding = 15});

  @override
  AppImageSelectionState createState() => AppImageSelectionState();
}

class AppImageSelectionState extends State<AppImageSelection> {
  File? _selectedImage;

  Future<void> _selectImage() async {
    final imagePicker = ImagePicker();
    final selectedImage = await imagePicker.pickImage(
        source: ImageSource.gallery, imageQuality: 25);

    if (selectedImage != null) {
      setState(() {
        _selectedImage = File(selectedImage.path);
// need to return here
      });
    }
  }

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: _selectImage,
        child: Container(
          width: widget.width,
          height: widget.height,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
            border: Border.all(color: widget.outlineColor, width: 4),
          ),
          child: Padding(
            padding: EdgeInsets.all(widget.padding),
            child: Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: colorBlack,
              ),
              child: _selectedImage != null
                  ? ClipOval(
                      child: Image.file(
                        _selectedImage!,
                        fit: BoxFit.cover,
                      ),
                    )
                  : Icon(
                      CupertinoIcons.add,
                      size: widget.iconSize,
                      color: Colors.white,
                    ),
            ),
          ),
        ),
      );
}
