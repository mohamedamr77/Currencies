import 'package:flutter/material.dart';

import '../../../../core/image.dart';
import '../../../../core/shared_widget/custom_appbar.dart';
import '../../../../core/shared_widget/description_listview_horizontal.dart';

class CalculatorPriceBody extends StatefulWidget {
  const CalculatorPriceBody({super.key});

  @override
  State<CalculatorPriceBody> createState() => _CalculatorPriceBodyState();
}

class _CalculatorPriceBodyState extends State<CalculatorPriceBody> {
  TextEditingController weightController = TextEditingController();
  String selectedPurity = "عيار 21";
  String selectedCurrency = "الجنية المصري";
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 150,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(ImageApp.appBarBGDashboardImage),
              fit: BoxFit.fill,
            ),
          ),
          child: const SafeArea(
            child: Column(
              children: [
                CustomAppbar(text: "حاسبة الذهب"),
                DescriptionListviewHorizontal(text: "حدد العيار المراد تحويله"),
              ],
            ),
          ),
        ),
        const SizedBox(height: 20),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(

                    child: TextFormField(
                      onTap: (){
                        setState(() {

                        });
                      },
                      controller: weightController,
                      decoration: const InputDecoration(
                        hintText: "40",
                      ),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  const Spacer(),
                  Expanded(
                    child: DropdownButton<String>(
                      value: selectedPurity,
                      items: <String>['عيار 21', 'عيار 18', 'عيار 24'].map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {

                          selectedPurity = newValue!;
                        });
                      },
                    ),
                  ),
                  Image.asset(ImageApp.about, height: 35, width: 35),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [

                  Expanded(
                    child: Text(
                      weightController.text.isEmpty
                          ? "0"
                          : (double.parse(weightController.text) * 1940).toStringAsFixed(2),
                    ),
                  ),
                  const Spacer(),
                  Expanded(
                    flex: 2,
                    child: DropdownButton<String>(
                      value: selectedCurrency,
                      items: <String>['الجنية المصري', 'الدولار الامريكي'].map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedCurrency = newValue!;
                        });
                      },
                    ),
                  ),
                  Image.asset(ImageApp.about, height: 35, width: 35),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
