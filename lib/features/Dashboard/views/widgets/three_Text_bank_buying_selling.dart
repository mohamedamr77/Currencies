import 'package:flutter/material.dart';

class BankBuyingSelling extends StatelessWidget {
  const BankBuyingSelling({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Padding(
      padding: EdgeInsets.only(top: 25, right: 26, left: 26),
      child: Row(
        textDirection: TextDirection.rtl,
        children: [
          Text(
            "البنك",
            textAlign: TextAlign.right,
            style: TextStyle(
              color: Color(0xff14172c),
              fontFamily: "Tajawal",
              fontSize: 16,
            ),
          ),
          Spacer(flex: 2),
          Text(
            "شراء",
            textAlign: TextAlign.right,
            style: TextStyle(
              color: Color(0xff14172c),
              fontFamily: "Tajawal",
              fontSize: 16,
            ),
          ),
          Spacer(flex: 1),
          Text(
            "بيع",
            textAlign: TextAlign.right,
            style: TextStyle(
              color: Color(0xff14172c),
              fontFamily: "Tajawal",
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
