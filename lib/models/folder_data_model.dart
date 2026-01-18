import 'package:flutter/material.dart';

class FolderDataModel {
  final IconData icon;
  final String title;
  final int fileNumber;
  final double fileSize;

  FolderDataModel(
      {required this.icon,
      required this.title,
      required this.fileNumber,
      required this.fileSize});
}
