import 'package:noteappwithfirebase/models/folder_data_model.dart';
import 'package:flutter/material.dart';
import 'package:noteappwithfirebase/views/academic_folder_screen.dart';
import 'package:noteappwithfirebase/views/folder_screen.dart';
import '../models/file_data_model.dart';
import '../views/others_folder_screen.dart';
import '../views/work_folder_screen.dart';
class FileDataList {
  static List<FileDataModel> fileList=[
    FileDataModel(
        title: 'Personal',
        description: 'I have thought everything. bla bla bla',
        date: DateTime(2026, 03, 15)
    ),
    FileDataModel(
        title: 'You know you are cooked',
        description: 'I have thought everything. bla bla bla. i am cooked. bla bla bla',
        date: DateTime(2026, 03, 15)
    ),
    FileDataModel(
        title: 'Personal',
        description: 'I have thought everything. bla bla bla',
        date: DateTime(2026, 03, 15)
    ),
    FileDataModel(
        title: 'Personal',
        description: 'I have thought everything. bla bla bla',
        date: DateTime(2026, 03, 15)
    ),
    FileDataModel(
        title: 'Personal',
        description: 'I have thought everything. bla bla bla',
        date:  DateTime(2026, 03, 15)
    ),
    FileDataModel(
        title: 'Personal',
        description: 'I have thought everything.I have thought everything. bla bla bla bla bla bla I have thought everything. bla bla bla'
            ,
        date:  DateTime(2026, 03, 15)
    ),
    FileDataModel(
        title: 'Personal',
        description: 'I have thought everything. bla bla bla. I have thought everything. bla bla bla',
        date:  DateTime(2026, 03, 15)
    ),

  ];
}
