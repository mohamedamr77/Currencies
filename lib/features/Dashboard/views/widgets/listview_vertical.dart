import 'package:flutter/material.dart';

import 'container_heigst_price.dart';

class ListviewVertical extends StatelessWidget {
  const ListviewVertical({super.key});

  @override
  Widget build(BuildContext context) {
    return   ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index) =>  Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(9),
          ),
          child: const Row(
            textDirection: TextDirection.rtl,
            children: [
              CircleAvatar(
                child: Image(
                  image: AssetImage("assets/images/amreica.png"),
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: double.infinity,
                ),
              ),
              SizedBox(width: 10),
              CountryCurrency("دولار أمريكى "),
              Spacer(flex: 2,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "48.48", // Replace with the actual buying price
                    style: TextStyle(
                      color: Color(0xff14172c),
                      fontFamily: "Tajawal",
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(width: 62),
                  Text(
                    "48.50", // Replace with the actual selling price
                    style: TextStyle(
                      color: Color(0xff14172c),
                      fontFamily: "Tajawal",
                      fontSize: 16,
                    ),
                  ),
                ],
              ),

            ],
          ),
        ),
        separatorBuilder: (context, index) {
          return const SizedBox(height: 10,);
        },
        itemCount: 10
    );
  }
}
