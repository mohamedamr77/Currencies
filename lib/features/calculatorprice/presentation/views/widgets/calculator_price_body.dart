import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/image.dart';
import '../../../../../core/shared_widget/custom_appbar.dart';
import '../../../../../core/shared_widget/description_listview_horizontal.dart';
import '../../view_model/logic.dart';

class CalculatorPriceBody extends StatefulWidget {
  const CalculatorPriceBody({super.key});

  @override
  State<CalculatorPriceBody> createState() => _CalculatorPriceBodyState();
}

class _CalculatorPriceBodyState extends State<CalculatorPriceBody> {
  final CurrencyConverterLogic _converterLogic = CurrencyConverterLogic();

  @override
  void initState() {
    super.initState();
    _converterLogic.baseCurrencyController
        .addListener(_converterLogic.onBaseCurrencyChanged);
    _converterLogic.targetCurrencyController
        .addListener(_converterLogic.onTargetCurrencyChanged);
  }

  @override
  void dispose() {
    _converterLogic.baseCurrencyController
        .removeListener(_converterLogic.onBaseCurrencyChanged);
    _converterLogic.targetCurrencyController
        .removeListener(_converterLogic.onTargetCurrencyChanged);
    _converterLogic.dispose();
    super.dispose();
  }

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
          child:  SafeArea(
            child: Column(
              children: [
                CustomAppbar(text: "حاسبة الاسعار", action: IconButton(onPressed: (){GoRouter.of(context).pop();}, icon: const Icon(Icons.arrow_forward_ios,color: Colors.white,)),),
                const DescriptionListviewHorizontal(text: "حدد العيار المراد تحويله"),
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
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.33,
                    child: Expanded(
                      child: TextFormField(
                        controller: _converterLogic.baseCurrencyController,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(),
                      ),
                    ),
                  ),
                  const Spacer(),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.33,
                    child: Expanded(
                      child: DropdownButton<String>(
                        value: _converterLogic.baseCurrency,
                        items: _converterLogic.conversionRates.keys
                            .map((currency) => DropdownMenuItem<String>(
                                  value: currency,
                                  child: Text(currency),
                                ))
                            .toList(),
                        onChanged: (value) {
                          setState(() {
                            _converterLogic
                                .onBaseCurrencyDropdownChanged(value);
                          });
                        },
                      ),
                    ),
                  ),
                  Image.asset(ImageApp.about, height: 25, width: 25),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.33,
                    child: TextFormField(
                      controller: _converterLogic.targetCurrencyController,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                          // focusedBorder: InputBorder.none
                          ),
                    ),
                  ),
                  const Spacer(),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.33,
                    child: DropdownButton<String>(
                      value: _converterLogic.targetCurrency,
                      items: _converterLogic.conversionRates.keys
                          .map((currency) => DropdownMenuItem<String>(
                                value: currency,
                                child: Text(currency),
                              ))
                          .toList(),
                      onChanged: (value) {
                        setState(() {
                          _converterLogic
                              .onTargetCurrencyDropdownChanged(value);
                        });
                      },
                    ),
                  ),
                  Image.asset(ImageApp.about, height: 25, width: 25),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
