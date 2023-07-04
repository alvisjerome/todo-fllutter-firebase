import 'package:app/app/widgets/custom_text.dart';
import 'package:flutter/material.dart';

import '../../../../../core/enums/todo_menu_enum.dart';

class TaskMenu extends StatelessWidget {
  const TaskMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      elevation: 0.5,
      itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
        PopupMenuItem<String>(
          value: TodoMenuEnum.edit.name,
          child: const CustomText(value: "Edit"),
        ),
        PopupMenuItem<String>(
          value: TodoMenuEnum.delete.name,
          child: const CustomText(value: 'Delete'),
        ),
      ],
      onSelected: (String value) {
        // print('Selected option: $value');
      },
      icon: const Icon(Icons.more_vert),
    );
  }
}
