import 'package:noteappwithfirebase/models/folder_data_model.dart';
import 'package:flutter/material.dart';
class FolderDataList {
  static List<FolderDataModel> folderList=[
      FolderDataModel(
          icon: Icons.file_copy_outlined,
          title: 'Personal',
          fileNumber: 30,
          fileSize: 56,
      ),
      FolderDataModel(
          icon: Icons.menu_book_sharp,
          fileNumber: 102,
          title: 'Academic',
          fileSize: 8.3,
      ),
      FolderDataModel(
          icon: Icons.work_outline_sharp,
          title: 'Work',
          fileNumber: 200,
          fileSize: 5.5,
      ),
      FolderDataModel(
          icon: Icons.library_books,
          title: 'Others',
          fileNumber: 301,
          fileSize: 2.21,
      ),

    ];
  }
