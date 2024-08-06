import 'package:flutter/material.dart';

import '../../../../../core/utils/image.dart';
import 'custom_list_tile.dart';
import 'dialog.dart';

class ListViewListTile extends StatelessWidget {
  const ListViewListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          shrinkWrap: true,
          children: [
            CustomListTile(
              trailingImage: ImageApp.el3omla,
              title: "العملة الأساسية",
            ),
            CustomListTile(
              trailingImage: ImageApp.lang,
              title: "اللغة",
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) => const DialogScreen());
              },
            ),
            CustomListTile(
              trailingImage: ImageApp.notification,
              title: "الاشعارات",
            ),
            CustomListTile(
              trailingImage: ImageApp.elkhat,
              title: "اعداد الخط",
            ),
            CustomListTile(
              trailingImage: ImageApp.about,
              title: "عن التطبيق",
            ),
            CustomListTile(
              trailingImage: ImageApp.signout,
              title: "تسجيل خروج",
            )
          ],
        )
    );
  }
}
