import 'package:noteappwithfirebase/models/folder_data_model.dart';
import 'package:flutter/material.dart';
import 'package:noteappwithfirebase/views/academic_folder_screen.dart';
import 'package:noteappwithfirebase/views/personal_folder_screen.dart';

import '../views/others_folder_screen.dart';
import '../views/work_folder_screen.dart';
class FolderDataList {
  static List<FolderDataModel> folderList=[
      FolderDataModel(
          icon: Icons.file_copy_outlined,
          title: 'Personal',
          fileNumber: 30,
          fileSize: 56,
          navigationScreen: PersonalFolderScreen()
      ),
      FolderDataModel(
          icon: Icons.menu_book_sharp,
          fileNumber: 102,
          title: 'Academic',
          fileSize: 8.3,
          navigationScreen: AcademicFolderScreen()
      ),
      FolderDataModel(
          icon: Icons.work_outline_sharp,
          title: 'Work',
          fileNumber: 200,
          fileSize: 5.5,
          navigationScreen: WorkFolderScreen()
      ),
      FolderDataModel(
          icon: Icons.library_books,
          title: 'Others',
          fileNumber: 301,
          fileSize: 2.21,
          navigationScreen: OthersFolderScreen(),
      ),

    ];
  }
