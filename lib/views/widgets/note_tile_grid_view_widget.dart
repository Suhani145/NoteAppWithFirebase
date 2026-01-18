import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import '../../data/file_data_list.dart';
import '../../utils/responsive_size.dart';
import 'add_new_note_card_widget.dart';
import 'note_tile_widget.dart';

class NoteTileGridView extends StatelessWidget {
  const NoteTileGridView({
    super.key,
    required this.responsiveSize,
  });

  final ResponsiveSize responsiveSize;

  @override
  Widget build(BuildContext context) {
    List<Widget> gridItems = [
      AddNewNoteCardWidget(responsiveSize: responsiveSize)
    ];
    for (var note in FileDataList.fileList) {
      gridItems.add(NoteTileWidget(
        responsiveSize: responsiveSize,
        title: note.title,
        description: note.description,
        dateTime: note.date,
      ));
    }
    return Expanded(
        child: MasonryGridView.count(
      crossAxisCount: 2,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      itemCount: gridItems.length,
      itemBuilder: (context, index) {
        return gridItems[index];
      },
    ));
  }
}
