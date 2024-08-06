import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/image.dart';

class DialogScreen extends StatefulWidget {
  const DialogScreen({super.key});

  @override
  State<DialogScreen> createState() => _DialogScreenState();
}

class _DialogScreenState extends State<DialogScreen> {
  String? lang;
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        padding: const EdgeInsets.all(13),
        height: 300,
        child: Column(
          children: [
            const Spacer(),
            const Text(
              "اختيار اللغة",
              style: TextStyle(
                fontSize: 20,
                fontFamily: "Tajawal",
              ),
            ),
            const Spacer(
              flex: 2,
            ),
            Row(
              children: [
                Expanded(
                  child: RadioListTile(
                      title: const Text("العربية",
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            fontFamily: "Tajawal",
                          )),
                      value: "العربية",
                      groupValue: lang,
                      onChanged: (val) {
                        setState(() {
                          lang = val;
                        });
                      }),
                ),
                SvgPicture.asset(
                  ImageApp.arabic,
                  fit: BoxFit.cover,
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: RadioListTile(
                      title: const Text("الأنجليزية",
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            fontFamily: "Tajawal",
                          )),
                      value: "الأنجليزية",
                      groupValue: lang,
                      onChanged: (val) {
                        setState(() {
                          lang = val;
                        });
                      }),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 17),
                  child: SvgPicture.asset(
                    ImageApp.english,
                  ),
                ),
              ],
            ),
            const Spacer(
              flex: 3,
            ),
            GestureDetector(
                onTap: () {},
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 8),
                  decoration: BoxDecoration(
                    color: const Color(0xff5726fc),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Text(
                    "حفظ",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Tajawal",
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )),
            const Spacer(
              flex: 1,
            ),
          ],
        ),
      ),
    );
  }
}
