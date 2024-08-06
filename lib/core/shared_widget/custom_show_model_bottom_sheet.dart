import 'package:digitaltransactions/core/utils/image.dart';
import 'package:flutter/material.dart';


class CustomShowModelBottomSheet extends StatelessWidget {
  const CustomShowModelBottomSheet({super.key});

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const Center(
                    child: Text(
                      "اكتب المبلغ",
                      style: TextStyle(fontSize: 20),
                    )),
                Row(
                  children: [
                    const Expanded(
                        child: Text(
                          "40",
                          style: TextStyle(fontSize: 30),
                        )),
                    const Text(
                      "دولار أمريكى",
                      style: TextStyle(fontSize: 20),
                    ),
                    const SizedBox(width: 5),
                    CircleAvatar(
                      child: CircleAvatar(
                        backgroundImage: Image.asset(
                          ImageApp.amirca,
                          height: 50,
                          width: 50,
                        ).image,
                      ),
                    )
                  ],
                ),
                const Divider(),
                const SizedBox(height: 20),
                Row(
                  children: [
                    const Expanded(
                        child: Text(
                          "1920",
                          style: TextStyle(fontSize: 30),
                        )),
                    const Text(
                      "الجنية المصري",
                      style: TextStyle(fontSize: 20),
                    ),
                    const SizedBox(width: 5),
                    CircleAvatar(
                      child: CircleAvatar(
                        child: Image(
                          image: AssetImage(ImageApp.egypt),
                          width: double.infinity,
                          fit: BoxFit.fill,
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 5),
                for (var row in _buildNumberPadRows()) row,
              ],
            ),
          ),
        );
      },
    );
  }

  List<Widget> _buildNumberPadRows() {
    return [
      _buildNumberPadRow(["1", "2", "3"]),
      _buildNumberPadRow(["4", "5", "6"]),
      _buildNumberPadRow(["7", "8", "9"]),
      _buildNumberPadRow([".", "0", const Icon(Icons.arrow_forward_rounded, color: Colors.white)]),
    ];
  }

  Widget _buildNumberPadRow(List<dynamic> items) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: Row(
        children: items.map((item) {
          return Expanded(
            child: Container(
              height: 60,
              width: 60,
              color: item is Icon ? Colors.green : const Color(0xffe8e8e8),
              child: Center(
                child: item is String
                    ? Text(item)
                    : item is Icon
                    ? item
                    : const Text(''),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => _showBottomSheet(context),
      child: const Text('Show Bottom Sheet'),
    );
  }
}
